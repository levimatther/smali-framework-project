.class public Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SpamNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/spam/SpamNotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirstTimeNonSpamCallDialogFragment"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FirstTimeNonSpamDialog"


# instance fields
.field private context:Landroid/content/Context;

.field private dismissed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 409
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;Z)Z
    .locals 0

    .line 409
    iput-boolean p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->dismissed:Z

    return p1
.end method

.method static synthetic access$400(Landroid/os/Bundle;)Landroidx/fragment/app/DialogFragment;
    .locals 0

    .line 409
    invoke-static {p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->newInstance(Landroid/os/Bundle;)Landroidx/fragment/app/DialogFragment;

    move-result-object p0

    return-object p0
.end method

.method private static newInstance(Landroid/os/Bundle;)Landroidx/fragment/app/DialogFragment;
    .locals 1

    .line 417
    new-instance v0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;

    invoke-direct {v0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;-><init>()V

    .line 418
    invoke-virtual {v0, p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 444
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 445
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 450
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 452
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/spam/SpamNotificationActivity;

    .line 453
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phone_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "contact_lookup_result_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 455
    invoke-static {v1}, Lcom/android/dialer/logging/ContactLookupResult$Type;->forNumber(I)Lcom/android/dialer/logging/ContactLookupResult$Type;

    move-result-object v1

    .line 457
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 458
    invoke-static {v0}, Lcom/android/incallui/spam/SpamNotificationActivity;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const v5, 0x7f110347

    invoke-virtual {p0, v5, v4}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 459
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f11046c

    .line 460
    invoke-virtual {p0, v3}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f110351

    .line 462
    invoke-virtual {p0, v3}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$3;

    invoke-direct {v4, p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$3;-><init>(Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;)V

    .line 461
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f110468

    .line 470
    invoke-virtual {p0, v3}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$2;

    invoke-direct {v4, p0, v0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$2;-><init>(Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;Ljava/lang/String;)V

    .line 469
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f110469

    .line 480
    invoke-virtual {p0, v3}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$1;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment$1;-><init>(Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;Lcom/android/incallui/spam/SpamNotificationActivity;Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V

    .line 479
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 490
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 431
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 432
    iget-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->context:Landroid/content/Context;

    .line 434
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_ON_DISMISS_NON_SPAM_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 432
    invoke-static {p1, v0, v1}, Lcom/android/incallui/spam/SpamNotificationActivity;->access$600(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 437
    iget-boolean p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->dismissed:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 425
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeNonSpamCallDialogFragment;->dismiss()V

    .line 426
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onPause()V

    return-void
.end method
