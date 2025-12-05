from diagrams import Diagram
from diagrams.aws.security import Guardduty
from diagrams.aws.integration import Eventbridge
from diagrams.aws.compute import Lambda
from diagrams.aws.management import Cloudwatch


with Diagram(
    "GuardDuty Auto Remediation",
    show=True,  # set False if you do not want the window to pop up
    filename="../diagrams/guardduty-auto-remediation-arch",
    outformat="png",
):
    gd = Guardduty("GuardDuty\nFindings")
    eb = Eventbridge("EventBridge\nRule")
    lm = Lambda("Lambda\nAuto Remediation")
    cw = Cloudwatch("CloudWatch\nLogs")

    gd >> eb >> lm >> cw
