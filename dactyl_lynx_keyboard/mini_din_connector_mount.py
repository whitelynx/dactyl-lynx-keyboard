from spkb.utils import cylinder_outer


class MiniDINConnectorMount:
    def __init__(self):
        self.connectorRadius = 11.4 / 2
        self.innerFrameWidth = 2
        self.innerFrameThickness = 1.25
        self.outerFrameWidth = 3
        self.outerFrameThickness = 4

    def outerRadius(self):
        return self.connectorRadius + self.innerFrameWidth + self.outerFrameWidth

    def frame(self):
        return (
            cylinder_outer(self.outerRadius(), self.outerFrameThickness)
        )

    def hole(self):
        return (
            cylinder_outer(self.outerRadius() - self.outerFrameWidth, self.outerFrameThickness * 8, center=True)
            - cylinder_outer(self.outerRadius(), self.innerFrameThickness)
            .translate((0, 0, self.outerFrameWidth / 2))
            + cylinder_outer(self.connectorRadius, self.innerFrameThickness * 8, center=True)
        )
