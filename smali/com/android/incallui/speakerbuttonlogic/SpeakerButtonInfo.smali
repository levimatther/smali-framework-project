.class public Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;
.super Ljava/lang/Object;
.source "SpeakerButtonInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo$IconSize;
    }
.end annotation


# instance fields
.field public final checkable:Z

.field public final contentDescription:I

.field public final icon:I

.field public final isChecked:Z

.field public final label:I


# direct methods
.method public constructor <init>(Landroid/telecom/CallAudioState;I)V
    .locals 7

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const v2, 0x7f11028d

    const v3, 0x7f0801ff

    const v4, 0x7f0801fe

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-ne v0, v1, :cond_7

    .line 51
    iput-boolean v5, p0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->checkable:Z

    .line 52
    iput-boolean v5, p0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->isChecked:Z

    const v0, 0x7f1102a3

    .line 53
    iput v0, p0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->label:I

    .line 55
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    if-ne p2, v1, :cond_0

    const p1, 0x7f0801aa

    goto :goto_0

    :cond_0
    const p1, 0x7f0801a9

    .line 57
    :goto_0
    iput p1, p0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->icon:I

    const p1, 0x7f110280

    .line 61
    iput p1, p0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->contentDescription:I

    goto :goto_5

    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_3

    if-ne p2, v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 64
    :goto_1
    iput v3, p0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->icon:I

    .line 68
    iput v2, p0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->contentDescription:I

    goto :goto_5

    .line 69
    :cond_3
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p1

    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_5

    if-ne p2, v1, :cond_4

    const p1, 0x7f0801cd

    goto :goto_2

    :cond_4
    const p1, 0x7f0801cc

    .line 71
    :goto_2
    iput p1, p0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->icon:I

    const p1, 0x7f110284

    .line 75
    iput p1, p0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->contentDescription:I

    goto :goto_5

    :cond_5
    if-ne p2, v1, :cond_6

    const p1, 0x7f0801e2

    goto :goto_3

    :cond_6
    const p1, 0x7f0801e1

    .line 77
    :goto_3
    iput p1, p0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->icon:I

    const p1, 0x7f110282

    .line 81
    iput p1, p0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->contentDescription:I

    goto :goto_5

    :cond_7
    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->checkable:Z

    .line 85
    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p1

    if-ne p1, v6, :cond_8

    move v5, v0

    :cond_8
    iput-boolean v5, p0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->isChecked:Z

    const p1, 0x7f1102aa

    .line 86
    iput p1, p0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->label:I

    if-ne p2, v1, :cond_9

    goto :goto_4

    :cond_9
    move v3, v4

    .line 87
    :goto_4
    iput v3, p0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->icon:I

    .line 91
    iput v2, p0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;->contentDescription:I

    :goto_5
    return-void
.end method
