.class public Lcom/android/tct/common/DialerDialogActivity;
.super Landroid/app/Activity;
.source "DialerDialogActivity.java"


# static fields
.field public static final CALL_ID:Ljava/lang/String; = "call_id"

.field private static final CHECKBOX_MERGE_RTT_STATE_KEY:Ljava/lang/String; = "checkbox_merge_rtt_status"

.field private static final CHECKED:Ljava/lang/String; = "checked"

.field public static final DIALER_PREF:Ljava/lang/String; = "pref_dialer_plugin"

.field public static final SHOW_BLOCK_SUPPRESSION:Ljava/lang/String; = "show_block_suppression"

.field public static final SHOW_EXTERNAL_CALL:Ljava/lang/String; = "shwo external_call"

.field public static final SHOW_RTT_EMC_FAILURE:Ljava/lang/String; = "show_rtt_emc_failure"

.field public static final SHOW_RTT_HELP_INFO:Ljava/lang/String; = "show_rtt_help_info"

.field public static final SHOW_RTT_MERGE:Ljava/lang/String; = "show_rtt_merge"

.field private static final TAG:Ljava/lang/String;

.field private static final UNCHECKED:Ljava/lang/String; = "unchecked"

.field public static sIsShowing:Z


# instance fields
.field private mCallId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/android/tct/common/DialerDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/tct/common/DialerDialogActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lcom/android/tct/common/DialerDialogActivity;->sIsShowing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showBlockSuppressionDialog()V
    .locals 4

    .line 166
    sget-object v0, Lcom/android/tct/common/DialerDialogActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "showBlockSuppressionDialog"

    invoke-static {v0, v3, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/tct/common/DialerDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 168
    new-instance v0, Landroid/app/TctDialog;

    invoke-direct {v0, p0}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f11007f

    .line 170
    invoke-virtual {v0, v2}, Landroid/app/TctDialog;->setMessage(I)Landroid/app/TctDialog;

    .line 171
    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setCancelable(Z)V

    .line 172
    new-instance v1, Lcom/android/tct/common/DialerDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/android/tct/common/DialerDialogActivity$2;-><init>(Lcom/android/tct/common/DialerDialogActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/TctDialog;->setCenterButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 179
    invoke-virtual {v0}, Landroid/app/TctDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 180
    invoke-virtual {v0}, Landroid/app/TctDialog;->show()V

    return-void
.end method

.method private showExternalCall()V
    .locals 4

    .line 184
    sget-object v0, Lcom/android/tct/common/DialerDialogActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "showExternalCallDialog"

    invoke-static {v0, v3, v2}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    new-instance v0, Landroid/app/TctDialog;

    invoke-direct {v0, p0}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    .line 186
    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setCancelable(Z)V

    const v1, 0x7f11037c

    .line 187
    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setMessage(I)Landroid/app/TctDialog;

    .line 188
    new-instance v1, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$fnh6aFKNb8HtLCW12AU5_f3WnEg;

    invoke-direct {v1, p0}, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$fnh6aFKNb8HtLCW12AU5_f3WnEg;-><init>(Lcom/android/tct/common/DialerDialogActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/TctDialog;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 193
    new-instance v1, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$XsTkF_s9V4RQu-ktMlPQ1LVyV6E;

    invoke-direct {v1, p0}, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$XsTkF_s9V4RQu-ktMlPQ1LVyV6E;-><init>(Lcom/android/tct/common/DialerDialogActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/TctDialog;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 196
    invoke-virtual {v0}, Landroid/app/TctDialog;->show()V

    return-void
.end method

.method private showRTTEmcFailureDialog()V
    .locals 3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/tct/common/DialerDialogActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " showRTTEmcFailurDialog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 141
    new-instance v0, Landroid/app/TctDialog;

    invoke-direct {v0, p0}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 142
    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setCancelable(Z)V

    const v1, 0x7f110401

    .line 143
    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setMessage(I)Landroid/app/TctDialog;

    .line 144
    new-instance v1, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$oCMvwJoiSzjtTj2kuXjRaZivY8Q;

    invoke-direct {v1, p0}, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$oCMvwJoiSzjtTj2kuXjRaZivY8Q;-><init>(Lcom/android/tct/common/DialerDialogActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/TctDialog;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 147
    invoke-virtual {v0}, Landroid/app/TctDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 148
    invoke-virtual {v0}, Landroid/app/TctDialog;->show()V

    return-void
.end method

.method private showRTTHelpInformationDialog()V
    .locals 4

    .line 154
    sget-object v0, Lcom/android/tct/common/DialerDialogActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "showRTTHelpInformationDialog"

    invoke-static {v0, v3, v2}, Lcom/android/dialer/common/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    new-instance v0, Landroid/app/TctDialog;

    invoke-direct {v0, p0}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setCancelable(Z)V

    const v1, 0x7f110405

    .line 157
    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setMessage(I)Landroid/app/TctDialog;

    .line 158
    new-instance v1, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$zvKJMmxIqc3f_m96WeZeurikhe0;

    invoke-direct {v1, p0}, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$zvKJMmxIqc3f_m96WeZeurikhe0;-><init>(Lcom/android/tct/common/DialerDialogActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/TctDialog;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 161
    invoke-virtual {v0}, Landroid/app/TctDialog;->show()V

    return-void
.end method

.method private showRttMerge(Ljava/lang/String;)V
    .locals 7

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/tct/common/DialerDialogActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " showRttMerge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/tct/common/DialerDialogActivity;->mContext:Landroid/content/Context;

    const-string v1, "pref_dialer_plugin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "checkbox_merge_rtt_status"

    const-string/jumbo v4, "unchecked"

    .line 89
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "checked"

    .line 90
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/call/TelecomAdapter;->merge(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/tct/common/DialerDialogActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f11040d

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 93
    invoke-virtual {p0}, Lcom/android/tct/common/DialerDialogActivity;->finish()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/tct/common/DialerDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0c0103

    const/4 v5, 0x0

    .line 97
    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f090222

    .line 98
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 99
    new-instance v6, Landroid/app/TctDialog;

    invoke-direct {v6, p0}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v6, v2}, Landroid/app/TctDialog;->setCancelable(Z)V

    .line 101
    invoke-virtual {v6, v0}, Landroid/app/TctDialog;->setView(Landroid/view/View;)Landroid/app/TctDialog;

    move-result-object v0

    const v2, 0x7f1103fd

    .line 102
    invoke-virtual {v0, v2}, Landroid/app/TctDialog;->setDialogTitle(I)Landroid/app/TctDialog;

    move-result-object v0

    const v2, 0x7f1103fc

    .line 103
    invoke-virtual {v0, v2}, Landroid/app/TctDialog;->setMessage(I)Landroid/app/TctDialog;

    const v0, 0x7f110415

    .line 104
    new-instance v2, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$vojS338ZGs8fdA7tNfVh7YL4OKc;

    invoke-direct {v2, p0, v4, v1, p1}, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$vojS338ZGs8fdA7tNfVh7YL4OKc;-><init>(Lcom/android/tct/common/DialerDialogActivity;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    invoke-virtual {v6, v0, v2}, Landroid/app/TctDialog;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    const/high16 p1, 0x1040000

    .line 115
    new-instance v0, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$5kWbttM-s19dP3lTwD-jTFkzZKk;

    invoke-direct {v0, p0, v4, v1}, Lcom/android/tct/common/-$$Lambda$DialerDialogActivity$5kWbttM-s19dP3lTwD-jTFkzZKk;-><init>(Lcom/android/tct/common/DialerDialogActivity;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v6, p1, v0}, Landroid/app/TctDialog;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    const p1, 0x7f110408

    .line 124
    invoke-virtual {v6, p1, v5}, Landroid/app/TctDialog;->setCenterButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 125
    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 126
    invoke-virtual {v4}, Landroid/widget/CheckBox;->requestFocus()Z

    .line 127
    new-instance p1, Lcom/android/tct/common/DialerDialogActivity$1;

    invoke-direct {p1, p0, v6}, Lcom/android/tct/common/DialerDialogActivity$1;-><init>(Lcom/android/tct/common/DialerDialogActivity;Landroid/app/TctDialog;)V

    invoke-virtual {v4, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 133
    invoke-virtual {v6}, Landroid/app/TctDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 134
    invoke-virtual {v6}, Landroid/app/TctDialog;->show()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 207
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, v0, v0}, Lcom/android/tct/common/DialerDialogActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public synthetic lambda$showExternalCall$4$DialerDialogActivity(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/android/tct/common/DialerDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.android.incallui.extra.EXTRA_NOTIFICATION_ID"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 190
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/incallui/InCallPresenter;->getExternalCallNotifier()Lcom/android/incallui/ExternalCallNotifier;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/incallui/ExternalCallNotifier;->pullExternalCall(I)V

    .line 191
    invoke-virtual {p0}, Lcom/android/tct/common/DialerDialogActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$showExternalCall$5$DialerDialogActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 194
    invoke-virtual {p0}, Lcom/android/tct/common/DialerDialogActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$showRTTEmcFailureDialog$2$DialerDialogActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/android/tct/common/DialerDialogActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$showRTTHelpInformationDialog$3$DialerDialogActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 159
    invoke-virtual {p0}, Lcom/android/tct/common/DialerDialogActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$showRttMerge$0$DialerDialogActivity(Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 106
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "checked"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "unchecked"

    :goto_0
    const-string p4, "checkbox_merge_rtt_status"

    .line 109
    invoke-interface {p2, p4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    invoke-static {}, Lcom/android/incallui/call/TelecomAdapter;->getInstance()Lcom/android/incallui/call/TelecomAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/incallui/call/TelecomAdapter;->merge(Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/android/tct/common/DialerDialogActivity;->mContext:Landroid/content/Context;

    const p2, 0x7f11040d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 113
    invoke-virtual {p0}, Lcom/android/tct/common/DialerDialogActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$showRttMerge$1$DialerDialogActivity(Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 117
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "checked"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "unchecked"

    :goto_0
    const-string p3, "checkbox_merge_rtt_status"

    .line 120
    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    invoke-virtual {p0}, Lcom/android/tct/common/DialerDialogActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/tct/common/DialerDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "show_block_suppression"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 52
    invoke-virtual {p0}, Lcom/android/tct/common/DialerDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "show_rtt_help_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 53
    invoke-virtual {p0}, Lcom/android/tct/common/DialerDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "show_rtt_emc_failure"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 54
    invoke-virtual {p0}, Lcom/android/tct/common/DialerDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "show_rtt_merge"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 55
    invoke-virtual {p0}, Lcom/android/tct/common/DialerDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "shwo external_call"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 56
    iput-object p0, p0, Lcom/android/tct/common/DialerDialogActivity;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    .line 57
    sput-boolean v5, Lcom/android/tct/common/DialerDialogActivity;->sIsShowing:Z

    if-eqz p1, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/android/tct/common/DialerDialogActivity;->showBlockSuppressionDialog()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 63
    invoke-direct {p0}, Lcom/android/tct/common/DialerDialogActivity;->showRTTHelpInformationDialog()V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 67
    invoke-direct {p0}, Lcom/android/tct/common/DialerDialogActivity;->showRTTEmcFailureDialog()V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 71
    invoke-virtual {p0}, Lcom/android/tct/common/DialerDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "call_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tct/common/DialerDialogActivity;->mCallId:Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/tct/common/DialerDialogActivity;->showRttMerge(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 76
    invoke-direct {p0}, Lcom/android/tct/common/DialerDialogActivity;->showExternalCall()V

    goto :goto_0

    .line 79
    :cond_4
    sget-object p1, Lcom/android/tct/common/DialerDialogActivity;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "No found correct action!"

    invoke-static {p1, v1, v0}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/tct/common/DialerDialogActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    .line 202
    sput-boolean v0, Lcom/android/tct/common/DialerDialogActivity;->sIsShowing:Z

    return-void
.end method
