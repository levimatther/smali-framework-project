.class public Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;
.super Landroid/app/Activity;
.source "VoicemailChangePinActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;,
        Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;
    }
.end annotation


# static fields
.field public static final EXTRA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "extra_phone_account_handle"

.field private static final KEY_DEFAULT_OLD_PIN:Ljava/lang/String; = "default_old_pin"

.field private static final MESSAGE_HANDLE_RESULT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VmChangePinActivity"


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mConfig:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

.field private mErrorText:Landroid/widget/TextView;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mHintText:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;

.field private mOldPin:Ljava/lang/String;

.field private mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mPinEntry:Landroid/widget/EditText;

.field private mPinMaxLength:I

.field private mPinMinLength:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mUiState:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    sget-object v0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->Initial:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    iput-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mUiState:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    .line 100
    new-instance v0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$1;

    invoke-direct {v0, p0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$1;-><init>(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V

    iput-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mUiState:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->updateState(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;I)Ljava/lang/CharSequence;
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->getChangePinResultMessage(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Ljava/lang/CharSequence;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->showError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/widget/EditText;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinEntry:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->showError(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/telecom/PhoneAccountHandle;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Lcom/android/voicemail/impl/OmtpEvents;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->handleOmtpEvent(Lcom/android/voicemail/impl/OmtpEvents;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/widget/TextView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mHeaderText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinMinLength:I

    return p0
.end method

.method static synthetic access$1900(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinMaxLength:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->setHeader(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->validatePassword(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mFirstPin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mFirstPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->processPinChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mConfig:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Lcom/android/voicemail/impl/VoicemailStatus$Editor;
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->getVoicemailStatusEditor()Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/os/Handler;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/widget/TextView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mHintText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/widget/Button;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mNextButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Landroid/widget/TextView;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mErrorText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->getCurrentPasswordInput()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Z)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->setNextEnabled(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mOldPin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mOldPin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->verifyOldPin()V

    return-void
.end method

.method private getChangePinResultMessage(I)Ljava/lang/CharSequence;
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected ChangePinResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VmChangePinActivity"

    invoke-static {v0, p1}, Lcom/android/voicemail/impl/VvmLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const p1, 0x7f1104fb

    .line 541
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const p1, 0x7f1104f9

    .line 537
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    const p1, 0x7f1104fa

    .line 539
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    const p1, 0x7f1104fe

    .line 535
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    const p1, 0x7f1104fc

    .line 533
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    const p1, 0x7f1104fd

    .line 531
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCurrentPasswordInput()Ljava/lang/String;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultOldPin(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 1

    .line 481
    new-instance v0, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    invoke-direct {v0, p0, p1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    const-string p0, "default_old_pin"

    .line 482
    invoke-virtual {v0, p0}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getVoicemailStatusEditor()Lcom/android/voicemail/impl/VoicemailStatus$Editor;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {p0, v0}, Lcom/android/voicemail/impl/VoicemailStatus;->edit(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object v0

    return-object v0
.end method

.method private handleOmtpEvent(Lcom/android/voicemail/impl/OmtpEvents;)V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mConfig:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->getVoicemailStatusEditor()Lcom/android/voicemail/impl/VoicemailStatus$Editor;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;->handleEvent(Lcom/android/voicemail/impl/VoicemailStatus$Editor;Lcom/android/voicemail/impl/OmtpEvents;)V

    return-void
.end method

.method public static isDefaultOldPinSet(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 0

    .line 477
    invoke-static {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->getDefaultOldPin(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private processPinChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 570
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 571
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 572
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f110501

    invoke-virtual {p0, v1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 575
    new-instance v0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;-><init>(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$ChangePinNetworkRequestCallback;->requestNetwork()V

    return-void
.end method

.method private readPinLength()V
    .locals 4

    .line 385
    new-instance v0, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    iget-object v1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {v0, p0, v1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    const-string v1, "pw_len"

    const-string v2, ""

    .line 388
    invoke-virtual {v0, v1, v2}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 389
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 391
    :try_start_0
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinMinLength:I

    const/4 v1, 0x1

    .line 392
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinMaxLength:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    :catch_0
    iput v2, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinMinLength:I

    .line 395
    iput v2, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinMaxLength:I

    goto :goto_0

    .line 398
    :cond_0
    iput v2, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinMinLength:I

    .line 399
    iput v2, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinMaxLength:I

    :goto_0
    return-void
.end method

.method public static setDefaultOldPIN(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V
    .locals 1

    .line 470
    new-instance v0, Lcom/android/voicemail/impl/VisualVoicemailPreferences;

    invoke-direct {v0, p0, p1}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 471
    invoke-virtual {v0}, Lcom/android/voicemail/impl/VisualVoicemailPreferences;->edit()Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p0

    const-string p1, "default_old_pin"

    .line 472
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;

    move-result-object p0

    .line 473
    invoke-virtual {p0}, Lcom/android/dialer/common/PerAccountSharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setHeader(I)V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 521
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinEntry:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setNextEnabled(Z)V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 557
    invoke-direct {p0, p1, v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->showError(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showError(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2

    .line 561
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 562
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 563
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 564
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 565
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updateState(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;)V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mUiState:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    .line 491
    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mUiState:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    if-eq v0, p1, :cond_0

    .line 493
    invoke-virtual {v0, p0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->onLeave(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V

    .line 494
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinEntry:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mUiState:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    invoke-virtual {p1, p0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->onEnter(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V

    .line 497
    :cond_0
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mUiState:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    invoke-virtual {p1, p0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->onInputChanged(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V

    return-void
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 507
    iget v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinMinLength:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinMaxLength:I

    if-nez v0, :cond_0

    return-object v1

    .line 513
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinMinLength:I

    if-ge p1, v0, :cond_1

    const p1, 0x7f1104fd

    .line 514
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method private verifyOldPin()V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mOldPin:Ljava/lang/String;

    invoke-direct {p0, v0, v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->processPinChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 451
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mUiState:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    invoke-virtual {p1, p0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->onInputChanged(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public handleNext()V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mUiState:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    invoke-virtual {v0, p0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->handleNext(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09021d

    if-ne v0, v1, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->handleNext()V

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900c2

    if-ne p1, v0, :cond_1

    .line 421
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 338
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 340
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_phone_account_handle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 341
    new-instance p1, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p1, p0, v0}, Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mConfig:Lcom/android/voicemail/impl/OmtpVvmCarrierConfigHelper;

    const p1, 0x7f0c0119

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->setContentView(I)V

    const p1, 0x7f110123

    .line 343
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->setTitle(I)V

    .line 345
    invoke-direct {p0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->readPinLength()V

    const p1, 0x1020002

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0900c2

    .line 349
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mCancelButton:Landroid/widget/Button;

    .line 350
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09021d

    .line 351
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mNextButton:Landroid/widget/Button;

    .line 352
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09023f

    .line 354
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinEntry:Landroid/widget/EditText;

    .line 355
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 356
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 357
    iget v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinMaxLength:I

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinEntry:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPinMaxLength:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    const v0, 0x7f09017e

    .line 361
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mHeaderText:Landroid/widget/TextView;

    const v0, 0x7f090180

    .line 362
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mHintText:Landroid/widget/TextView;

    const v0, 0x7f090150

    .line 363
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mErrorText:Landroid/widget/TextView;

    .line 365
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->isDefaultOldPinSet(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 366
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->getDefaultOldPin(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mOldPin:Ljava/lang/String;

    .line 367
    sget-object p1, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->VerifyOldPin:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->updateState(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;)V

    goto :goto_0

    .line 369
    :cond_1
    sget-object p1, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;->EnterOldPin:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    invoke-direct {p0, p1}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->updateState(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;)V

    :goto_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 436
    iget-object p1, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    const/4 p3, 0x1

    if-nez p1, :cond_0

    return p3

    :cond_0
    if-eqz p2, :cond_2

    const/4 p1, 0x6

    if-eq p2, p1, :cond_2

    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 443
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->handleNext()V

    return p3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 427
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 431
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 405
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 406
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->mUiState:Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;

    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity;->updateState(Lcom/android/voicemail/impl/settings/VoicemailChangePinActivity$State;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
