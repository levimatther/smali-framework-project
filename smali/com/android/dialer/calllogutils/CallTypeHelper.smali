.class public Lcom/android/dialer/calllogutils/CallTypeHelper;
.super Ljava/lang/Object;
.source "CallTypeHelper.java"


# instance fields
.field private final mAnsweredElsewhereName:Ljava/lang/CharSequence;

.field private final mBlockedName:Ljava/lang/CharSequence;

.field private final mIncomingName:Ljava/lang/CharSequence;

.field private final mIncomingPulledName:Ljava/lang/CharSequence;

.field private final mIncomingVideoName:Ljava/lang/CharSequence;

.field private final mIncomingVideoPulledName:Ljava/lang/CharSequence;

.field private final mIncomingVoLTEName:Ljava/lang/CharSequence;

.field private final mMissedName:Ljava/lang/CharSequence;

.field private final mMissedVideoName:Ljava/lang/CharSequence;

.field private final mMissedVoLTEName:Ljava/lang/CharSequence;

.field private final mOutgoingName:Ljava/lang/CharSequence;

.field private final mOutgoingPulledName:Ljava/lang/CharSequence;

.field private final mOutgoingVideoName:Ljava/lang/CharSequence;

.field private final mOutgoingVideoPulledName:Ljava/lang/CharSequence;

.field private final mOutgoingVoLTEName:Ljava/lang/CharSequence;

.field private final mRejectedName:Ljava/lang/CharSequence;

.field private final mVoicemailName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f1104a9

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mIncomingName:Ljava/lang/CharSequence;

    const v0, 0x7f1104aa

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mIncomingPulledName:Ljava/lang/CharSequence;

    const v0, 0x7f1104b1

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mOutgoingName:Ljava/lang/CharSequence;

    const v0, 0x7f1104b2

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mOutgoingPulledName:Ljava/lang/CharSequence;

    const v0, 0x7f1104ae

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mMissedName:Ljava/lang/CharSequence;

    const v0, 0x7f1104ab

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mIncomingVideoName:Ljava/lang/CharSequence;

    const v0, 0x7f1104ac

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mIncomingVideoPulledName:Ljava/lang/CharSequence;

    const v0, 0x7f1104b3

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mOutgoingVideoName:Ljava/lang/CharSequence;

    const v0, 0x7f1104b4

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mOutgoingVideoPulledName:Ljava/lang/CharSequence;

    const v0, 0x7f1104af

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mMissedVideoName:Ljava/lang/CharSequence;

    const v0, 0x7f1104ad

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mIncomingVoLTEName:Ljava/lang/CharSequence;

    const v0, 0x7f1104b5

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mOutgoingVoLTEName:Ljava/lang/CharSequence;

    const v0, 0x7f1104b0

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mMissedVoLTEName:Ljava/lang/CharSequence;

    const v0, 0x7f1104b7

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mVoicemailName:Ljava/lang/CharSequence;

    const v0, 0x7f1104b6

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mRejectedName:Ljava/lang/CharSequence;

    const v0, 0x7f1104a8

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mBlockedName:Ljava/lang/CharSequence;

    const v0, 0x7f1104a7

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mAnsweredElsewhereName:Ljava/lang/CharSequence;

    return-void
.end method

.method public static isMissedCallType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/16 v1, 0x3e8

    if-eq p0, v1, :cond_0

    const/16 v1, 0x3e9

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCallTypeText(IZZ)Ljava/lang/CharSequence;
    .locals 0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 166
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mMissedName:Ljava/lang/CharSequence;

    return-object p1

    :pswitch_0
    if-eqz p2, :cond_0

    .line 148
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mMissedVideoName:Ljava/lang/CharSequence;

    return-object p1

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mMissedVoLTEName:Ljava/lang/CharSequence;

    return-object p1

    :pswitch_1
    if-eqz p2, :cond_1

    .line 134
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mOutgoingVideoName:Ljava/lang/CharSequence;

    return-object p1

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mOutgoingVoLTEName:Ljava/lang/CharSequence;

    return-object p1

    :pswitch_2
    if-eqz p2, :cond_2

    .line 112
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mIncomingVideoName:Ljava/lang/CharSequence;

    return-object p1

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mIncomingVoLTEName:Ljava/lang/CharSequence;

    return-object p1

    .line 163
    :pswitch_3
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mAnsweredElsewhereName:Ljava/lang/CharSequence;

    return-object p1

    .line 160
    :pswitch_4
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mBlockedName:Ljava/lang/CharSequence;

    return-object p1

    .line 157
    :pswitch_5
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mRejectedName:Ljava/lang/CharSequence;

    return-object p1

    .line 154
    :pswitch_6
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mVoicemailName:Ljava/lang/CharSequence;

    return-object p1

    :pswitch_7
    if-eqz p2, :cond_3

    .line 141
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mMissedVideoName:Ljava/lang/CharSequence;

    return-object p1

    .line 143
    :cond_3
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mMissedName:Ljava/lang/CharSequence;

    return-object p1

    :pswitch_8
    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    .line 120
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mOutgoingVideoPulledName:Ljava/lang/CharSequence;

    return-object p1

    .line 122
    :cond_4
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mOutgoingVideoName:Ljava/lang/CharSequence;

    return-object p1

    :cond_5
    if-eqz p3, :cond_6

    .line 126
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mOutgoingPulledName:Ljava/lang/CharSequence;

    return-object p1

    .line 128
    :cond_6
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mOutgoingName:Ljava/lang/CharSequence;

    return-object p1

    :pswitch_9
    if-eqz p2, :cond_8

    if-eqz p3, :cond_7

    .line 98
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mIncomingVideoPulledName:Ljava/lang/CharSequence;

    return-object p1

    .line 100
    :cond_7
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mIncomingVideoName:Ljava/lang/CharSequence;

    return-object p1

    :cond_8
    if-eqz p3, :cond_9

    .line 104
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mIncomingPulledName:Ljava/lang/CharSequence;

    return-object p1

    .line 106
    :cond_9
    iget-object p1, p0, Lcom/android/dialer/calllogutils/CallTypeHelper;->mIncomingName:Ljava/lang/CharSequence;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
