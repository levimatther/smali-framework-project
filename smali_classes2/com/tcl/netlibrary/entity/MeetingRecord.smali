.class public Lcom/tcl/netlibrary/entity/MeetingRecord;
.super Ljava/lang/Object;
.source "MeetingRecord.java"


# instance fields
.field public endTime:J

.field public meetingId:Ljava/lang/String;

.field public meetingType:Ljava/lang/String;

.field public participants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tcl/netlibrary/entity/Participants;",
            ">;"
        }
    .end annotation
.end field

.field public payloadPart:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tcl/netlibrary/entity/PayloadPartInfo;",
            ">;"
        }
    .end annotation
.end field

.field public startTime:J

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
