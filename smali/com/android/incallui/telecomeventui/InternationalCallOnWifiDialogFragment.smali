.class public Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "InternationalCallOnWifiDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment$Callback;
    }
.end annotation


# static fields
.field static final ALWAYS_SHOW_WARNING_PREFERENCE_KEY:Ljava/lang/String; = "ALWAYS_SHOW_INTERNATIONAL_CALL_ON_WIFI_WARNING"

.field private static final ARG_CALL_ID:Ljava/lang/String; = "call_id"


# instance fields
.field private callback:Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment$Callback;)Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;
    .locals 2

    .line 85
    new-instance v0, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;

    invoke-direct {v0}, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;-><init>()V

    .line 86
    invoke-virtual {v0, p1}, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;->setCallback(Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment$Callback;)V

    .line 87
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 88
    invoke-static {p0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "call_id"

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, p1}, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private onNegativeButtonClick(Landroid/content/SharedPreferences;Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 175
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "InternationalCallOnWifiDialogFragment.onNegativeButtonClick"

    const-string v2, "alwaysWarn: %b"

    .line 172
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "ALWAYS_SHOW_INTERNATIONAL_CALL_ON_WIFI_WARNING"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    iget-object p1, p0, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;->callback:Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment$Callback;

    invoke-virtual {p0}, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "call_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment$Callback;->cancelCall(Ljava/lang/String;)V

    return-void
.end method

.method private onPositiveButtonClick(Landroid/content/SharedPreferences;Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 164
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "InternationalCallOnWifiDialogFragment.onPositiveButtonClick"

    const-string v2, "alwaysWarn: %b"

    .line 161
    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "ALWAYS_SHOW_INTERNATIONAL_CALL_ON_WIFI_WARNING"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    iget-object p1, p0, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;->callback:Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment$Callback;

    invoke-virtual {p0}, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "call_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment$Callback;->continueCall(Ljava/lang/String;)V

    return-void
.end method

.method public static shouldShow(Landroid/content/Context;)Z
    .locals 4

    .line 53
    invoke-static {p0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "InternationalCallOnWifiDialogFragment.shouldShow"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    const-string/jumbo v0, "user locked, returning false"

    .line 54
    invoke-static {v1, v0, p0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 58
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "ALWAYS_SHOW_INTERNATIONAL_CALL_ON_WIFI_WARNING"

    const/4 v3, 0x1

    .line 59
    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    new-array v0, v3, [Ljava/lang/Object;

    .line 61
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "result: %b"

    invoke-static {v1, v2, v0}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method


# virtual methods
.method public synthetic lambda$onCreateDialog$0$InternationalCallOnWifiDialogFragment(Landroid/content/SharedPreferences;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 150
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;->onPositiveButtonClick(Landroid/content/SharedPreferences;Z)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$1$InternationalCallOnWifiDialogFragment(Landroid/content/SharedPreferences;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 153
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;->onNegativeButtonClick(Landroid/content/SharedPreferences;Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 126
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    const-string p1, "InternationalCallOnWifiDialogFragment.onCreateDialog"

    .line 127
    invoke-static {p1}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;->shouldShow(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0c0086

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090056

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 139
    invoke-virtual {p0}, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ALWAYS_SHOW_INTERNATIONAL_CALL_ON_WIFI_WARNING"

    const/4 v3, 0x0

    .line 142
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 144
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {p0}, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f120009

    invoke-direct {v2, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 146
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 147
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x104000a

    new-instance v4, Lcom/android/incallui/telecomeventui/-$$Lambda$InternationalCallOnWifiDialogFragment$18Yb43tBLqpK_h3FXMFcH2rDvfQ;

    invoke-direct {v4, p0, v1, v0}, Lcom/android/incallui/telecomeventui/-$$Lambda$InternationalCallOnWifiDialogFragment$18Yb43tBLqpK_h3FXMFcH2rDvfQ;-><init>(Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V

    .line 148
    invoke-virtual {p1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v2, 0x1040000

    new-instance v4, Lcom/android/incallui/telecomeventui/-$$Lambda$InternationalCallOnWifiDialogFragment$WoBtUjax01WMogl0n4cUZO2z-VA;

    invoke-direct {v4, p0, v1, v0}, Lcom/android/incallui/telecomeventui/-$$Lambda$InternationalCallOnWifiDialogFragment$WoBtUjax01WMogl0n4cUZO2z-VA;-><init>(Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V

    .line 151
    invoke-virtual {p1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 156
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object p1

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "shouldShow indicated InternationalCallOnWifiDialogFragment should not have showed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCallback(Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment$Callback;)V
    .locals 0

    .line 120
    invoke-static {p1}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment$Callback;

    iput-object p1, p0, Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment;->callback:Lcom/android/incallui/telecomeventui/InternationalCallOnWifiDialogFragment$Callback;

    return-void
.end method
