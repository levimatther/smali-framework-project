.class public Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "NativeVoicemailChangePinActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field public static final ACTION_CHANGE_PIN:Ljava/lang/String; = "com.android.dialer.action.CHANGE_PIN"

.field private static final TAG:Ljava/lang/String; = "VmChangePinActivity"


# instance fields
.field private confirmPinLayout:Landroid/widget/LinearLayout;

.field private currentPinLayout:Landroid/widget/LinearLayout;

.field private etConfirmPin:Landroid/widget/EditText;

.field private etNewPin:Landroid/widget/EditText;

.field private etOldPin:Landroid/widget/EditText;

.field private executor:Ljava/util/concurrent/Executor;

.field handler:Landroid/os/Handler;

.field private hint:Ljava/lang/String;

.field private isAccessible:Z

.field private ivRecordLink:Landroid/widget/ImageView;

.field private loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

.field private mMenuBar:Landroid/widget/MenuBar;

.field private menubarRightTextView:Landroid/widget/TextView;

.field private newPinLayout:Landroid/widget/LinearLayout;

.field private phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private pinChanger:Lcom/android/voicemail/PinChanger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 85
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->executor:Ljava/util/concurrent/Executor;

    .line 94
    iput-boolean v0, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->isAccessible:Z

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private changePin()V
    .locals 4

    const-string v0, "VmChangePinActivity"

    const-string v1, "key to changes"

    .line 239
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->etOldPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->etNewPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    iget-object v2, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->etConfirmPin:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 244
    iget-object v2, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-virtual {v2}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->show()V

    .line 245
    iget-object v2, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/dialer/voicemail/settings/-$$Lambda$NativeVoicemailChangePinActivity$al6mVe05_PRYEteZlA1zDhLNXTY;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/dialer/voicemail/settings/-$$Lambda$NativeVoicemailChangePinActivity$al6mVe05_PRYEteZlA1zDhLNXTY;-><init>(Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static isPinScrambled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1

    .line 105
    invoke-static {p0}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object v0

    .line 107
    invoke-interface {v0, p0, p1}, Lcom/android/voicemail/VoicemailClient;->createPinChanger(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/PinChanger;

    move-result-object p0

    .line 108
    invoke-interface {p0}, Lcom/android/voicemail/PinChanger;->getScrambledPin()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const-string p1, "VmChangePinActivity"

    const-string v0, "afterTextChanged"

    .line 228
    invoke-static {p1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->etOldPin:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->etNewPin:Landroid/widget/EditText;

    .line 230
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->etConfirmPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->checkPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->isAccessible:Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public checkPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "phone"

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 171
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 173
    iput-object v1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->hint:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tcl/netlibrary/config/VVMConfig;->getMinimumPinLength()I

    move-result v4

    if-ge v2, v4, :cond_0

    goto/16 :goto_0

    .line 177
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const v4, 0x7f11033f

    if-nez v2, :cond_6

    .line 178
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tcl/netlibrary/config/VVMConfig;->getMinimumPinLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->hint:Ljava/lang/String;

    goto/16 :goto_1

    .line 181
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f11033b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->hint:Ljava/lang/String;

    goto/16 :goto_1

    .line 185
    :cond_2
    invoke-static {p2}, Lcom/android/voicemail/impl/utils/StringUtils;->isConsecutivePin(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 186
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f11033a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->hint:Ljava/lang/String;

    goto :goto_1

    .line 188
    :cond_3
    invoke-static {p2}, Lcom/android/voicemail/impl/utils/StringUtils;->isRepeatPin(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 189
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f11033e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->hint:Ljava/lang/String;

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 191
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x4

    if-le p1, v1, :cond_5

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 193
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f11033d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->hint:Ljava/lang/String;

    goto :goto_1

    .line 195
    :cond_5
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    .line 199
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 200
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->hint:Ljava/lang/String;

    goto :goto_1

    .line 203
    :cond_7
    iput-object v1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->hint:Ljava/lang/String;

    :cond_8
    const/4 v3, 0x1

    goto :goto_1

    .line 176
    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110181

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->hint:Ljava/lang/String;

    .line 206
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isEnabled is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VmChangePinActivity"

    invoke-static {p2, p1}, Lcom/android/voicemail/impl/VvmLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez v3, :cond_a

    .line 208
    iget-object p2, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->menubarRightTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0601ae

    invoke-virtual {p3, v0, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 210
    :cond_a
    iget-object p2, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->menubarRightTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0601af

    invoke-virtual {p3, v0, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    return v3
.end method

.method public synthetic lambda$changePin$5$NativeVoicemailChangePinActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->pinChanger:Lcom/android/voicemail/PinChanger;

    invoke-interface {v0, p1, p2}, Lcom/android/voicemail/PinChanger;->changePin(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 247
    iget-object p2, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-virtual {p2}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;->dismiss()V

    if-nez p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/android/dialer/voicemail/settings/-$$Lambda$NativeVoicemailChangePinActivity$_penc-sRygPV0NppexgVJcMwfgg;

    invoke-direct {p2, p0}, Lcom/android/dialer/voicemail/settings/-$$Lambda$NativeVoicemailChangePinActivity$_penc-sRygPV0NppexgVJcMwfgg;-><init>(Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->finish()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 254
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/android/dialer/voicemail/settings/-$$Lambda$NativeVoicemailChangePinActivity$fDgfwjfPP57IDv6IBZACDC1YM5g;

    invoke-direct {p2, p0}, Lcom/android/dialer/voicemail/settings/-$$Lambda$NativeVoicemailChangePinActivity$fDgfwjfPP57IDv6IBZACDC1YM5g;-><init>(Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    .line 258
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/android/dialer/voicemail/settings/-$$Lambda$NativeVoicemailChangePinActivity$3VJ2kGmd8uCc0-TT5maXT7E7SDs;

    invoke-direct {p2, p0}, Lcom/android/dialer/voicemail/settings/-$$Lambda$NativeVoicemailChangePinActivity$3VJ2kGmd8uCc0-TT5maXT7E7SDs;-><init>(Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const/4 p2, 0x7

    if-ne p1, p2, :cond_3

    .line 262
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/android/dialer/voicemail/settings/-$$Lambda$NativeVoicemailChangePinActivity$k58wOed45x4EzYS-jtue-fatIT8;

    invoke-direct {p2, p0}, Lcom/android/dialer/voicemail/settings/-$$Lambda$NativeVoicemailChangePinActivity$k58wOed45x4EzYS-jtue-fatIT8;-><init>(Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 266
    :cond_3
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/android/dialer/voicemail/settings/-$$Lambda$NativeVoicemailChangePinActivity$EyY4yRihM0XCfWuFK1OG76pKmb4;

    invoke-direct {p2, p0}, Lcom/android/dialer/voicemail/settings/-$$Lambda$NativeVoicemailChangePinActivity$EyY4yRihM0XCfWuFK1OG76pKmb4;-><init>(Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$null$0$NativeVoicemailChangePinActivity()V
    .locals 2

    const v0, 0x7f110120

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$null$1$NativeVoicemailChangePinActivity()V
    .locals 2

    const v0, 0x7f1103a8

    .line 255
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$null$2$NativeVoicemailChangePinActivity()V
    .locals 2

    const v0, 0x7f1103a6

    .line 259
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$null$3$NativeVoicemailChangePinActivity()V
    .locals 2

    const v0, 0x7f1103a7

    .line 263
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$null$4$NativeVoicemailChangePinActivity()V
    .locals 2

    const v0, 0x7f1103a9

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 116
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "phone_account_handle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 119
    invoke-static {p0}, Lcom/android/voicemail/VoicemailComponent;->get(Landroid/content/Context;)Lcom/android/voicemail/VoicemailComponent;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/android/voicemail/VoicemailComponent;->getVoicemailClient()Lcom/android/voicemail/VoicemailClient;

    move-result-object p1

    .line 121
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->phoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-interface {p1, v0, v1}, Lcom/android/voicemail/VoicemailClient;->createPinChanger(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Lcom/android/voicemail/PinChanger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->pinChanger:Lcom/android/voicemail/PinChanger;

    .line 122
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xe

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    const p1, 0x7f0c00c6

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->setContentView(I)V

    const p1, 0x7f090303

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 128
    new-instance p1, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    invoke-direct {p1, p0}, Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->loadingDialogUtil:Lcom/android/dialer/voicemail/settings/LoadingDialogUtil;

    const p1, 0x7f09023f

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->etOldPin:Landroid/widget/EditText;

    const p1, 0x7f090244

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->etNewPin:Landroid/widget/EditText;

    const p1, 0x7f09023b

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->etConfirmPin:Landroid/widget/EditText;

    .line 134
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->etOldPin:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->etOldPin:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 136
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->etNewPin:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->etNewPin:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 138
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->etConfirmPin:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->etConfirmPin:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->mMenuBar:Landroid/widget/MenuBar;

    const v0, 0x7f110115

    const v1, 0x7f110525

    const v2, 0x7f1102f9

    const/4 v3, 0x0

    .line 142
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    const p1, 0x7f090240

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->currentPinLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f090245

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->newPinLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f09023c

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->confirmPinLayout:Landroid/widget/LinearLayout;

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->mMenuBar:Landroid/widget/MenuBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/MenuBar;->getSoftKeyName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/MenuBar;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->menubarRightTextView:Landroid/widget/TextView;

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->hint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VmChangePinActivity"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->etOldPin:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, ""

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->etOldPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {p0}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tcl/netlibrary/config/VVMConfig;->getMinimumPinLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    const-string v0, "old pin is correct, don\'t show the hint when focus changed"

    .line 298
    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iput-object v3, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->hint:Ljava/lang/String;

    :cond_0
    const v0, 0x7f090244

    const v1, 0x7f09023f

    const v2, 0x7f09023b

    const/4 v4, 0x0

    if-eqz p2, :cond_4

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    const/high16 v3, -0x1000000

    .line 303
    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0601ac

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto/16 :goto_1

    .line 309
    :cond_1
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->newPinLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 306
    :cond_2
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->currentPinLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 312
    :cond_3
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->confirmPinLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 316
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const v5, 0x7f0601ad

    if-eq p2, v2, :cond_7

    if-eq p2, v1, :cond_6

    if-eq p2, v0, :cond_5

    goto :goto_0

    .line 321
    :cond_5
    iget-object p2, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->newPinLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 318
    :cond_6
    iget-object p2, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->currentPinLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 324
    :cond_7
    iget-object p2, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->confirmPinLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 327
    :goto_0
    iget-object p2, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->hint:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const/high16 p2, -0x10000

    .line 329
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 330
    iget-object p1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->hint:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 331
    iput-object v3, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->hint:Ljava/lang/String;

    :cond_8
    :goto_1
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "VmChangePinActivity"

    const-string v1, "onKeyUp"

    .line 276
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 279
    iget-boolean v1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->isAccessible:Z

    if-eqz v1, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->changePin()V

    goto :goto_0

    .line 282
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAccessable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->isAccessible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 3

    const-string v0, "VmChangePinActivity"

    const-string v1, "onResume"

    .line 156
    invoke-static {v0, v1}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->etOldPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->etNewPin:Landroid/widget/EditText;

    .line 158
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->etConfirmPin:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->checkPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/voicemail/settings/NativeVoicemailChangePinActivity;->isAccessible:Z

    .line 159
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
