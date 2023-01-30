.class public Lcom/android/incallui/contactgrid/TopRow;
.super Ljava/lang/Object;
.source "TopRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/contactgrid/TopRow$Info;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConnectionLabel(Lcom/android/incallui/incall/protocol/PrimaryCallState;)Ljava/lang/CharSequence;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectionLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    invoke-static {p0}, Lcom/android/incallui/contactgrid/TopRow;->isAccount(Lcom/android/incallui/incall/protocol/PrimaryCallState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isWifi:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isConference:Z

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    iget-object p0, p0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectionLabel:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInfo(Landroid/content/Context;Lcom/android/incallui/incall/protocol/PrimaryCallState;Lcom/android/incallui/incall/protocol/PrimaryInfo;)Lcom/android/incallui/contactgrid/TopRow$Info;
    .locals 6

    .line 67
    iget-object v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectionIcon:Landroid/graphics/drawable/Drawable;

    .line 70
    iget-boolean v1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isWifi:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0801da

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    :cond_0
    iget v1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eq v1, v2, :cond_9

    iget v1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    goto :goto_2

    .line 89
    :cond_1
    iget v1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->sessionModificationState:I

    invoke-static {v1}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasSentVideoUpgradeRequest(I)Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->sessionModificationState:I

    .line 90
    invoke-static {v1}, Lcom/android/incallui/videotech/utils/VideoUtils;->hasReceivedVideoUpgradeRequest(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 92
    :cond_2
    iget v1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_3

    const p1, 0x7f1102b3

    .line 93
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 94
    :cond_3
    iget v1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_7

    iget v1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    goto :goto_0

    .line 98
    :cond_4
    iget v1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    if-ne v1, v5, :cond_5

    iget-boolean v1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isRemotelyHeld:Z

    if-eqz v1, :cond_5

    const p1, 0x7f1102af

    .line 99
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 100
    :cond_5
    iget p0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    if-ne p0, v5, :cond_6

    invoke-static {p2}, Lcom/android/incallui/contactgrid/TopRow;->shouldShowNumber(Lcom/android/incallui/incall/protocol/PrimaryInfo;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 101
    iget-object p0, p2, Lcom/android/incallui/incall/protocol/PrimaryInfo;->number:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/incallui/contactgrid/TopRow;->spanDisplayNumber(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_3

    .line 105
    :cond_6
    invoke-static {p1}, Lcom/android/incallui/contactgrid/TopRow;->getConnectionLabel(Lcom/android/incallui/incall/protocol/PrimaryCallState;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_3

    .line 97
    :cond_7
    :goto_0
    invoke-static {p0, p1}, Lcom/android/incallui/contactgrid/TopRow;->getLabelForDialing(Landroid/content/Context;Lcom/android/incallui/incall/protocol/PrimaryCallState;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_3

    .line 91
    :cond_8
    :goto_1
    invoke-static {p0, p1}, Lcom/android/incallui/contactgrid/TopRow;->getLabelForVideoRequest(Landroid/content/Context;Lcom/android/incallui/incall/protocol/PrimaryCallState;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_3

    .line 78
    :cond_9
    :goto_2
    iget-object v1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->callSubject:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 79
    iget-object p0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->callSubject:Ljava/lang/String;

    goto :goto_4

    .line 82
    :cond_a
    invoke-static {p0, p1}, Lcom/android/incallui/contactgrid/TopRow;->getLabelForIncoming(Landroid/content/Context;Lcom/android/incallui/incall/protocol/PrimaryCallState;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 85
    invoke-static {p2}, Lcom/android/incallui/contactgrid/TopRow;->shouldShowNumber(Lcom/android/incallui/incall/protocol/PrimaryInfo;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-array p1, v5, [Ljava/lang/CharSequence;

    aput-object p0, p1, v3

    const-string p0, " "

    aput-object p0, p1, v4

    const/4 p0, 0x2

    .line 86
    iget-object p2, p2, Lcom/android/incallui/incall/protocol/PrimaryInfo;->number:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/incallui/contactgrid/TopRow;->spanDisplayNumber(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    aput-object p2, p1, p0

    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_b
    :goto_3
    move v3, v4

    .line 108
    :goto_4
    new-instance p1, Lcom/android/incallui/contactgrid/TopRow$Info;

    invoke-direct {p1, p0, v0, v3}, Lcom/android/incallui/contactgrid/TopRow$Info;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    return-object p1
.end method

.method private static getLabelForDialing(Landroid/content/Context;Lcom/android/incallui/incall/protocol/PrimaryCallState;)Ljava/lang/CharSequence;
    .locals 3

    .line 158
    iget-object v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectionLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isWifi:Z

    if-nez v0, :cond_0

    const v0, 0x7f11027c

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 159
    iget-object p1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectionLabel:Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 161
    :cond_0
    iget-boolean v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isVideoCall:Z

    if-eqz v0, :cond_2

    .line 162
    iget-boolean p1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isWifi:Z

    if-eqz p1, :cond_1

    const p1, 0x7f1102b8

    .line 163
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const p1, 0x7f1102b7

    .line 165
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f11027d

    .line 168
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLabelForIncoming(Landroid/content/Context;Lcom/android/incallui/incall/protocol/PrimaryCallState;)Ljava/lang/CharSequence;
    .locals 3

    .line 130
    iget-boolean v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isConference:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 131
    invoke-static {p1}, Lcom/android/incallui/contactgrid/TopRow;->isAccount(Lcom/android/incallui/incall/protocol/PrimaryCallState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1102ba

    new-array v2, v2, [Ljava/lang/Object;

    .line 132
    iget-object p1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectionLabel:Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 133
    :cond_0
    iget-boolean p1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isVideoCall:Z

    if-eqz p1, :cond_1

    const p1, 0x7f110113

    .line 134
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const p1, 0x7f110112

    .line 136
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 138
    :cond_2
    iget-boolean v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isVideoCall:Z

    if-eqz v0, :cond_3

    .line 139
    iget v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->sessionModificationState:I

    iget-boolean p1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isWifi:Z

    invoke-static {p0, v0, p1}, Lcom/android/incallui/contactgrid/TopRow;->getLabelForIncomingVideo(Landroid/content/Context;IZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 140
    :cond_3
    iget-boolean v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isWifi:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectionLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 141
    iget-object p0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectionLabel:Ljava/lang/String;

    return-object p0

    .line 142
    :cond_4
    invoke-static {p1}, Lcom/android/incallui/contactgrid/TopRow;->isAccount(Lcom/android/incallui/incall/protocol/PrimaryCallState;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f110167

    new-array v2, v2, [Ljava/lang/Object;

    .line 143
    iget-object p1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectionLabel:Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 144
    :cond_5
    iget-boolean p1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isWorkCall:Z

    if-eqz p1, :cond_6

    const p1, 0x7f11016d

    .line 145
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const p1, 0x7f11016a

    .line 147
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLabelForIncomingVideo(Landroid/content/Context;IZ)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p2, :cond_0

    .line 153
    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->getLabelForIncomingWifiVideoCall(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->getLabelForIncomingVideoCall(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getLabelForVideoRequest(Landroid/content/Context;Lcom/android/incallui/incall/protocol/PrimaryCallState;)Ljava/lang/CharSequence;
    .locals 1

    .line 184
    iget v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->sessionModificationState:I

    packed-switch v0, :pswitch_data_0

    .line 198
    invoke-static {}, Lcom/android/dialer/common/Assert;->fail()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const p1, 0x7f1102b5

    .line 191
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f1102b6

    .line 193
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 195
    :pswitch_2
    iget v0, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->sessionModificationState:I

    iget-boolean p1, p1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isWifi:Z

    invoke-static {p0, v0, p1}, Lcom/android/incallui/contactgrid/TopRow;->getLabelForIncomingVideo(Landroid/content/Context;IZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p1, 0x7f1102b4

    .line 189
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p1, 0x7f1102b7

    .line 186
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private static isAccount(Lcom/android/incallui/incall/protocol/PrimaryCallState;)Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectionLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->gatewayNumber:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static shouldShowNumber(Lcom/android/incallui/incall/protocol/PrimaryInfo;)Z
    .locals 2

    .line 117
    iget-boolean v0, p0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->nameIsNumber:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->location:Ljava/lang/String;

    if-nez v0, :cond_1

    return v1

    .line 123
    :cond_1
    iget-object p0, p0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->number:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static spanDisplayNumber(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 113
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v0, p0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
