from solid2 import cube, hull
from solid2.core.object_base import OpenSCADObject
from solid2.extensions.bosl2 import screws


class LCDMount:
    """A mount for an LCD screen.
    """
    def __init__(self):
        self.lcdSize = (27.8, 39.3, 1.2)          # (X, Y, Z)
        self.lcdMountingHoleCenters = (22.5, 34)  # (X, Y)
        self.marginWidth = (0.5, 1.1)             # (X, Y)
        self.frameThickness = (4, 3)              # (X/Y, Z)
        self.cornerSize = 3.75

    def place(self, shape: OpenSCADObject) -> OpenSCADObject:
        """Place the given shape at the location and orientation of this LCD mount.
        """
        return (
            shape
            .rotate(20, (1, 0, 0))
            .translate((-25, 48, 50))
        )

    def frame(self) -> OpenSCADObject:
        """Render the frame for the LCD screen.
        """
        cornerBlockSize = self.cornerSize + self.frameThickness[0] / 2
        cornerBlockThickness = self.frameThickness[1] - self.lcdSize[2]

        cornerBlockOffset = (  # X/Y, Z
            (self.cornerSize - cornerBlockSize) / 2,
            (self.frameThickness[1] - cornerBlockThickness) / 2
        )

        corner = (
            cube((cornerBlockSize, cornerBlockSize, cornerBlockThickness), center=True)
            .translate((cornerBlockOffset[0], cornerBlockOffset[0], 0))
            - screws.screw_hole("M2x1", length=cornerBlockThickness + 0.01, thread=False,
                                bevel=True, blunt_start=True, _fn=32)
        ).translate((0, 0, cornerBlockOffset[1]))

        return self.place(
            cube((
                self.lcdSize[0] + (self.frameThickness[0] - self.marginWidth[0]) * 2,
                self.lcdSize[1] + (self.frameThickness[0] - self.marginWidth[1]) * 2,
                self.frameThickness[1]
            ), center=True)
            - cube((
                self.lcdSize[0] - self.marginWidth[0] * 2,
                self.lcdSize[1] - self.marginWidth[1] * 2,
                self.frameThickness[1] + 1
            ), center=True)
            - cube((
                self.lcdSize[0],
                self.lcdSize[1],
                self.frameThickness[1]
            ), center=True)
            .translate((0, 0, -self.frameThickness[1] + self.lcdSize[2]))

            + corner
            .translate((-self.lcdMountingHoleCenters[0] / 2, -self.lcdMountingHoleCenters[1] / 2, 0))

            + corner
            .rotate((0, 0, 90))
            .translate((self.lcdMountingHoleCenters[0] / 2, -self.lcdMountingHoleCenters[1] / 2, 0))

            + corner
            .rotate((0, 0, 180))
            .translate((self.lcdMountingHoleCenters[0] / 2, self.lcdMountingHoleCenters[1] / 2, 0))

            + corner
            .rotate((0, 0, 270))
            .translate((-self.lcdMountingHoleCenters[0] / 2, self.lcdMountingHoleCenters[1] / 2, 0))
        )

    def mount(self, target: OpenSCADObject) -> OpenSCADObject:
        """Render a mounting piece between the frame and the given target.
        """
        return hull()(
            self.place(
                cube((
                    self.lcdSize[0] + (self.frameThickness[0] - self.marginWidth[0]) * 2,
                    0.01,
                    self.frameThickness[1]
                ), center=True)
                .translate((0, -self.lcdSize[1] / 2 - (self.frameThickness[0] - self.marginWidth[1]), 0))
            ),
            target,
        )
