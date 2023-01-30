.class public Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;
.super Landroid/widget/LinearLayout;
.source "VoicemailPlaybackLayout.java"

# interfaces
.implements Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter$PlaybackView;
.implements Lcom/android/dialer/app/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;,
        Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$SpeakerStatusListener;,
        Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PlayStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VOICEMAIL_DELETE_DELAY_MS:I = 0xbb8


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mDeleteButton:Landroid/widget/ImageButton;

.field private final mDeleteButtonListener:Landroid/view/View$OnClickListener;

.field private mIsPlaying:Z

.field private mIsSpeakerOn:Z

.field private mPlayStatusListener:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PlayStatusListener;

.field private mPlaybackSeek:Landroid/widget/SeekBar;

.field private mPlaybackSpeakerphone:Landroid/widget/ImageButton;

.field private mPositionText:Landroid/widget/TextView;

.field private mPositionUpdater:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;

.field private mPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

.field private final mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSpeakerStatusListener:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$SpeakerStatusListener;

.field private final mSpeakerphoneListener:Landroid/view/View$OnClickListener;

.field private mStartStopButton:Landroid/widget/ImageButton;

.field private final mStartStopButtonListener:Landroid/view/View$OnClickListener;

.field private mStateText:Landroid/widget/TextView;

.field private mTotalDurationText:Landroid/widget/TextView;

.field private mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

.field private mVoicemailSeekHandleDisabled:Landroid/graphics/drawable/Drawable;

.field private mVoicemailSeekHandleEnabled:Landroid/graphics/drawable/Drawable;

.field private mVoicemailUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const-class v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 277
    invoke-direct {p0, p1, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 281
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    new-instance p2, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$1;

    invoke-direct {p2, p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$1;-><init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)V

    iput-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mSpeakerphoneListener:Landroid/view/View$OnClickListener;

    .line 115
    new-instance p2, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$2;

    invoke-direct {p2, p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$2;-><init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)V

    iput-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mDeleteButtonListener:Landroid/view/View$OnClickListener;

    const/4 p2, 0x0

    .line 208
    iput-boolean p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mIsPlaying:Z

    .line 210
    new-instance p2, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$7;

    invoke-direct {p2, p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$7;-><init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)V

    iput-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mStartStopButtonListener:Landroid/view/View$OnClickListener;

    .line 239
    new-instance p2, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$8;

    invoke-direct {p2, p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$8;-><init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)V

    iput-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 282
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    const-string p2, "layout_inflater"

    .line 284
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x7f0c011b

    .line 285
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)Landroid/net/Uri;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mVoicemailUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;)Landroid/app/Activity;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private formatAsMinutesAndSeconds(I)Ljava/lang/String;
    .locals 3

    .line 473
    div-int/lit16 p1, p1, 0x3e8

    .line 474
    div-int/lit8 v0, p1, 0x3c

    mul-int/lit8 v1, v0, 0x3c

    sub-int/2addr p1, v1

    const/16 v1, 0x63

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 479
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "%02d:%02d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public deleteAction()V
    .locals 7

    .line 123
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_DELETE_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 124
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->getAdapterPosition()I

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->pausePlayback()V

    .line 136
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mVoicemailUri:Landroid/net/Uri;

    .line 137
    new-instance v2, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$3;

    invoke-direct {v2, p0, v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$3;-><init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;Landroid/net/Uri;)V

    .line 155
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 158
    invoke-static {}, Lcom/android/manager/OperatorManager;->getInstance()Lcom/android/operatorutils/IOperatorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/operatorutils/IOperatorManager;->isTmoActivate()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 160
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 161
    sget-object v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->TAG:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "mActivity is null"

    invoke-static {v0, v4, v3}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    .line 162
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 165
    :cond_1
    new-instance v0, Landroid/app/TctDialog;

    iget-object v3, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    const v3, 0x7f110186

    .line 166
    invoke-virtual {v0, v3}, Landroid/app/TctDialog;->setMessage(I)Landroid/app/TctDialog;

    .line 167
    invoke-virtual {v0, v4}, Landroid/app/TctDialog;->setCancelable(Z)V

    const v3, 0x7f110343

    .line 168
    new-instance v4, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$4;

    invoke-direct {v4, p0, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$4;-><init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;Landroid/app/TctDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/TctDialog;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    const v3, 0x7f1105ae

    .line 174
    new-instance v4, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$5;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$5;-><init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/TctDialog;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 180
    invoke-virtual {v0}, Landroid/app/TctDialog;->show()V

    goto :goto_0

    :cond_2
    const-wide/16 v5, 0xbea

    .line 185
    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const v3, 0x7f11045b

    .line 187
    invoke-static {p0, v3, v4}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v3

    const/16 v4, 0xbb8

    .line 191
    invoke-virtual {v3, v4}, Lcom/google/android/material/snackbar/Snackbar;->setDuration(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/snackbar/Snackbar;

    const v4, 0x7f11045c

    new-instance v5, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$6;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$6;-><init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;ILandroid/os/Handler;Ljava/lang/Runnable;)V

    .line 192
    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    .line 202
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 201
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_0
    return-void
.end method

.method public disableUiElements()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mStartStopButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 439
    invoke-virtual {p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->resetSeekBar()V

    return-void
.end method

.method public enableUiElements()V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mDeleteButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 445
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mStartStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 446
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 447
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mVoicemailSeekHandleEnabled:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getDesiredClipPosition()I
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public getStateText()Ljava/lang/String;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mStateText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mIsPlaying:Z

    return v0
.end method

.method public isSpeakerOn()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mIsSpeakerOn:Z

    return v0
.end method

.method public onDeleteVoicemail()V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->onVoicemailDeletedInDatabase()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 312
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f090248

    .line 314
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    const v0, 0x7f09024a

    .line 315
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mStartStopButton:Landroid/widget/ImageButton;

    const v0, 0x7f090249

    .line 316
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    const v0, 0x7f09011b

    .line 317
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mDeleteButton:Landroid/widget/ImageButton;

    const v0, 0x7f09024b

    .line 319
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mStateText:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 320
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    const v0, 0x7f090247

    .line 321
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPositionText:Landroid/widget/TextView;

    const v0, 0x7f090309

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mTotalDurationText:Landroid/widget/TextView;

    .line 324
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 325
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mStartStopButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mStartStopButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mSpeakerphoneListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mDeleteButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mDeleteButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPositionText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->formatAsMinutesAndSeconds(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mTotalDurationText:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->formatAsMinutesAndSeconds(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f080143

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mVoicemailSeekHandleEnabled:Landroid/graphics/drawable/Drawable;

    .line 335
    invoke-virtual {p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    .line 336
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f080144

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mVoicemailSeekHandleDisabled:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public onPlaybackError()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPositionUpdater:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->stopUpdating()V

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->disableUiElements()V

    .line 378
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mStateText:Landroid/widget/TextView;

    const v1, 0x7f110556

    invoke-direct {p0, v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPlaybackStarted(ILjava/util/concurrent/ScheduledExecutorService;)V
    .locals 3

    const/4 v0, 0x1

    .line 341
    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mIsPlaying:Z

    .line 343
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mStartStopButton:Landroid/widget/ImageButton;

    const v2, 0x7f08011b

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 344
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPlayStatusListener:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PlayStatusListener;

    if-eqz v1, :cond_0

    .line 345
    invoke-interface {v1, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PlayStatusListener;->playStatus(Z)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPositionUpdater:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->stopUpdating()V

    const/4 v0, 0x0

    .line 350
    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPositionUpdater:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    .line 352
    :cond_1
    new-instance v0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;-><init>(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;ILjava/util/concurrent/ScheduledExecutorService;)V

    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPositionUpdater:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    .line 353
    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->startUpdating()V

    return-void
.end method

.method public onPlaybackStopped()V
    .locals 3

    const/4 v0, 0x0

    .line 358
    iput-boolean v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mIsPlaying:Z

    .line 360
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mStartStopButton:Landroid/widget/ImageButton;

    const v2, 0x7f080124

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 361
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPlayStatusListener:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PlayStatusListener;

    if-eqz v1, :cond_0

    .line 362
    invoke-interface {v1, v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PlayStatusListener;->playStatus(Z)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPositionUpdater:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;->stopUpdating()V

    const/4 v0, 0x0

    .line 367
    iput-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPositionUpdater:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PositionUpdater;

    :cond_1
    return-void
.end method

.method public onSpeakerphoneOn(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 384
    iput-boolean p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mIsSpeakerOn:Z

    .line 385
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mSpeakerStatusListener:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$SpeakerStatusListener;

    invoke-interface {v0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$SpeakerStatusListener;->speakerStatus(Z)V

    .line 386
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    const v0, 0x7f0801fe

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 388
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f110562

    .line 389
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 391
    iput-boolean p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mIsSpeakerOn:Z

    .line 392
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mSpeakerStatusListener:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$SpeakerStatusListener;

    invoke-interface {v0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$SpeakerStatusListener;->speakerStatus(Z)V

    .line 393
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    const v0, 0x7f0801fb

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 395
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f110563

    .line 396
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public resetSeekBar()V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 453
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 454
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mVoicemailSeekHandleDisabled:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setActivityContext(Landroid/app/Activity;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setClipPosition(II)V
    .locals 2

    const/4 v0, 0x0

    .line 402
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 403
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 404
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 410
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPositionText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->formatAsMinutesAndSeconds(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mTotalDurationText:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->formatAsMinutesAndSeconds(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFetchContentTimeout()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mStartStopButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 428
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mStateText:Landroid/widget/TextView;

    const v1, 0x7f11054b

    invoke-direct {p0, v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIsFetchingContent()V
    .locals 2

    .line 421
    invoke-virtual {p0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->disableUiElements()V

    .line 422
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mStateText:Landroid/widget/TextView;

    const v1, 0x7f11054a

    invoke-direct {p0, v1}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPlayStatusListener(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PlayStatusListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPlayStatusListener:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$PlayStatusListener;

    return-void
.end method

.method public setPresenter(Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Landroid/net/Uri;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    .line 307
    iput-object p2, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mVoicemailUri:Landroid/net/Uri;

    return-void
.end method

.method public setSpeakerStatusListener(Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$SpeakerStatusListener;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mSpeakerStatusListener:Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout$SpeakerStatusListener;

    return-void
.end method

.method public setSuccess()V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mStateText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setViewHolder(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mViewHolder:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    return-void
.end method

.method public speakerAction()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->toggleSpeakerphone()V

    :cond_0
    return-void
.end method

.method public startStopAction()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    iget-boolean v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mIsPlaying:Z

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->pausePlayback()V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->VOICEMAIL_PLAY_AUDIO_AFTER_EXPANDING_ENTRY:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 226
    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 227
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->resumePlayback()V

    :goto_0
    return-void
.end method

.method public stopAndResetPlayback()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mPresenter:Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;

    if-nez v0, :cond_0

    return-void

    .line 298
    :cond_0
    iget-boolean v1, p0, Lcom/android/dialer/app/voicemail/VoicemailPlaybackLayout;->mIsPlaying:Z

    if-eqz v1, :cond_1

    .line 299
    invoke-virtual {v0}, Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;->resetAll()V

    :cond_1
    return-void
.end method
