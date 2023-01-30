.class public Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SpamNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/spam/SpamNotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirstTimeSpamCallDialogFragment"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FirstTimeSpamDialog"


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private dismissed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 323
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$500(Landroid/os/Bundle;)Landroidx/fragment/app/DialogFragment;
    .locals 0

    .line 323
    invoke-static {p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->newInstance(Landroid/os/Bundle;)Landroidx/fragment/app/DialogFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;Z)Z
    .locals 0

    .line 323
    iput-boolean p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->dismissed:Z

    return p1
.end method

.method private static newInstance(Landroid/os/Bundle;)Landroidx/fragment/app/DialogFragment;
    .locals 1

    .line 331
    new-instance v0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;

    invoke-direct {v0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;-><init>()V

    .line 332
    invoke-virtual {v0, p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 357
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 363
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 365
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/spam/SpamNotificationActivity;

    .line 366
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phone_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "contact_lookup_result_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 368
    invoke-static {v1}, Lcom/android/dialer/logging/ContactLookupResult$Type;->forNumber(I)Lcom/android/dialer/logging/ContactLookupResult$Type;

    move-result-object v1

    .line 371
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 372
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 373
    invoke-static {v0}, Lcom/android/incallui/spam/SpamNotificationActivity;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const v3, 0x7f110472

    invoke-virtual {p0, v3, v4}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f110471

    .line 374
    invoke-virtual {p0, v3}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f110351

    .line 376
    invoke-virtual {p0, v3}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment$3;

    invoke-direct {v4, p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment$3;-><init>(Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;)V

    .line 375
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f11046a

    .line 384
    invoke-virtual {p0, v3}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment$2;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment$2;-><init>(Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;Lcom/android/incallui/spam/SpamNotificationActivity;Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V

    .line 383
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f110467

    .line 394
    invoke-virtual {p0, v3}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment$1;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment$1;-><init>(Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;Lcom/android/incallui/spam/SpamNotificationActivity;Ljava/lang/String;Lcom/android/dialer/logging/ContactLookupResult$Type;)V

    .line 393
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 404
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->applicationContext:Landroid/content/Context;

    .line 346
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->SPAM_AFTER_CALL_NOTIFICATION_ON_DISMISS_SPAM_DIALOG:Lcom/android/dialer/logging/DialerImpression$Type;

    .line 344
    invoke-static {v0, v1, v2}, Lcom/android/incallui/spam/SpamNotificationActivity;->access$600(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 348
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 350
    iget-boolean p1, p0, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->dismissed:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 338
    invoke-virtual {p0}, Lcom/android/incallui/spam/SpamNotificationActivity$FirstTimeSpamCallDialogFragment;->dismiss()V

    .line 339
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onPause()V

    return-void
.end method
