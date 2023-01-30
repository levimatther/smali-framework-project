.class public Lcom/android/dialer/calldetails/ReportDialogFragment;
.super Landroid/app/DialogFragment;
.source "ReportDialogFragment.java"


# static fields
.field private static final KEY_NUMBER:Ljava/lang/String; = "number"


# instance fields
.field private cachedNumberLookupService:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

.field private info:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;

.field private name:Landroid/widget/TextView;

.field private number:Ljava/lang/String;

.field private numberView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$HuHOzg4Mnf7N4Tt5dTMGTY1jNWI(Lcom/android/dialer/calldetails/ReportDialogFragment;Landroid/content/Context;)Landroidx/core/util/Pair;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dialer/calldetails/ReportDialogFragment;->reportCallerId(Landroid/content/Context;)Landroidx/core/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$my6O1VtbMf1psk3UjDS39ZuEpHw(Lcom/android/dialer/calldetails/ReportDialogFragment;Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dialer/calldetails/ReportDialogFragment;->setCachedContactInfo(Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;)V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 83
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$sCJZ6C2_Dys7r919ZUpj638FoGo(Lcom/android/dialer/calldetails/ReportDialogFragment;Landroidx/core/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dialer/calldetails/ReportDialogFragment;->onReportCallerId(Landroidx/core/util/Pair;)V

    return-void
.end method

.method private lookupContactInfo(Ljava/lang/String;)V
    .locals 5

    .line 103
    new-instance v0, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$ykrB3l82TYpj9ifjR7dxUm5zmKo;

    invoke-direct {v0, p0}, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$ykrB3l82TYpj9ifjR7dxUm5zmKo;-><init>(Lcom/android/dialer/calldetails/ReportDialogFragment;)V

    .line 105
    new-instance v1, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$my6O1VtbMf1psk3UjDS39ZuEpHw;

    invoke-direct {v1, p0}, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$my6O1VtbMf1psk3UjDS39ZuEpHw;-><init>(Lcom/android/dialer/calldetails/ReportDialogFragment;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/ReportDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/dialer/common/concurrent/DialerExecutorComponent;->get(Landroid/content/Context;)Lcom/android/dialer/common/concurrent/DialerExecutorComponent;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lcom/android/dialer/common/concurrent/DialerExecutorComponent;->dialerExecutorFactory()Lcom/android/dialer/common/concurrent/DialerExecutorFactory;

    move-result-object v2

    .line 108
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/ReportDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "lookup_contact_info"

    invoke-interface {v2, v3, v4, v0}, Lcom/android/dialer/common/concurrent/DialerExecutorFactory;->createUiTaskBuilder(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object v0

    .line 109
    invoke-interface {v0, v1}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->onSuccess(Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->build()Lcom/android/dialer/common/concurrent/DialerExecutor;

    move-result-object v0

    .line 111
    invoke-interface {v0, p1}, Lcom/android/dialer/common/concurrent/DialerExecutor;->executeParallel(Ljava/lang/Object;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/dialer/calldetails/ReportDialogFragment;
    .locals 3

    .line 55
    new-instance v0, Lcom/android/dialer/calldetails/ReportDialogFragment;

    invoke-direct {v0}, Lcom/android/dialer/calldetails/ReportDialogFragment;-><init>()V

    .line 56
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "number"

    .line 57
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/dialer/calldetails/ReportDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private onReportCallerId(Landroidx/core/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pair<",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 148
    iget-object v0, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 149
    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 151
    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALLER_ID_REPORTED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v2}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    const p1, 0x7f1103ea

    .line 152
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object v2, Lcom/android/dialer/logging/DialerImpression$Type;->CALLER_ID_REPORT_FAILED:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, v2}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    const p1, 0x7f1103e9

    .line 155
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private static onShow(Landroid/content/Context;Landroid/app/AlertDialog;)V
    .locals 1

    const v0, 0x7f0600be

    .line 97
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    const/4 v0, -0x1

    .line 98
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, -0x2

    .line 99
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private positiveClick(Landroid/content/DialogInterface;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/android/dialer/calldetails/ReportDialogFragment;->startReportCallerIdWorker()V

    .line 93
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private reportCallerId(Landroid/content/Context;)Landroidx/core/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/core/util/Pair<",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/android/dialer/calldetails/ReportDialogFragment;->cachedNumberLookupService:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    iget-object v1, p0, Lcom/android/dialer/calldetails/ReportDialogFragment;->info:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;

    invoke-interface {v0, p1, v1}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;->reportAsInvalid(Landroid/content/Context;Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/dialer/calldetails/ReportDialogFragment;->info:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;

    invoke-interface {v0}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;->getContactInfo()Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/dialer/phonenumbercache/ContactInfo;->isBadData:Z

    .line 139
    iget-object v0, p0, Lcom/android/dialer/calldetails/ReportDialogFragment;->cachedNumberLookupService:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    iget-object v3, p0, Lcom/android/dialer/calldetails/ReportDialogFragment;->info:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;

    invoke-interface {v0, p1, v3}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;->addContact(Landroid/content/Context;Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;)V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "ReportUploadTask.doInBackground"

    const-string v3, "Contact reported."

    .line 140
    invoke-static {v1, v3, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    new-instance v0, Landroidx/core/util/Pair;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 143
    :cond_0
    new-instance v0, Landroidx/core/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private setCachedContactInfo(Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;)V
    .locals 2

    .line 115
    iput-object p1, p0, Lcom/android/dialer/calldetails/ReportDialogFragment;->info:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;

    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/dialer/calldetails/ReportDialogFragment;->name:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;->getContactInfo()Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/dialer/phonenumbercache/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/android/dialer/calldetails/ReportDialogFragment;->numberView:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;->getContactInfo()Lcom/android/dialer/phonenumbercache/ContactInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/dialer/phonenumbercache/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/calldetails/ReportDialogFragment;->numberView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/dialer/calldetails/ReportDialogFragment;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p1, p0, Lcom/android/dialer/calldetails/ReportDialogFragment;->name:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private startReportCallerIdWorker()V
    .locals 5

    .line 126
    new-instance v0, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$HuHOzg4Mnf7N4Tt5dTMGTY1jNWI;

    invoke-direct {v0, p0}, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$HuHOzg4Mnf7N4Tt5dTMGTY1jNWI;-><init>(Lcom/android/dialer/calldetails/ReportDialogFragment;)V

    .line 127
    new-instance v1, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$sCJZ6C2_Dys7r919ZUpj638FoGo;

    invoke-direct {v1, p0}, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$sCJZ6C2_Dys7r919ZUpj638FoGo;-><init>(Lcom/android/dialer/calldetails/ReportDialogFragment;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/ReportDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/dialer/common/concurrent/DialerExecutorComponent;->get(Landroid/content/Context;)Lcom/android/dialer/common/concurrent/DialerExecutorComponent;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lcom/android/dialer/common/concurrent/DialerExecutorComponent;->dialerExecutorFactory()Lcom/android/dialer/common/concurrent/DialerExecutorFactory;

    move-result-object v2

    .line 130
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/ReportDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "report_caller_id"

    invoke-interface {v2, v3, v4, v0}, Lcom/android/dialer/common/concurrent/DialerExecutorFactory;->createUiTaskBuilder(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object v0

    .line 131
    invoke-interface {v0, v1}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->onSuccess(Lcom/android/dialer/common/concurrent/DialerExecutor$SuccessListener;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->build()Lcom/android/dialer/common/concurrent/DialerExecutor;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/ReportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/dialer/common/concurrent/DialerExecutor;->executeParallel(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$lookupContactInfo$3$ReportDialogFragment(Ljava/lang/String;)Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/android/dialer/calldetails/ReportDialogFragment;->cachedNumberLookupService:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    invoke-virtual {p0}, Lcom/android/dialer/calldetails/ReportDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;->lookupCachedContactFromNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/android/dialer/phonenumbercache/CachedNumberLookupService$CachedContactInfo;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$onCreateDialog$0$ReportDialogFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/dialer/calldetails/ReportDialogFragment;->positiveClick(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$2$ReportDialogFragment(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/ReportDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/dialer/calldetails/ReportDialogFragment;->onShow(Landroid/content/Context;Landroid/app/AlertDialog;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/dialer/calldetails/ReportDialogFragment;->setRetainInstance(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/ReportDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/calldetails/ReportDialogFragment;->number:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/ReportDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/phonenumbercache/PhoneNumberCache;->get(Landroid/content/Context;)Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/dialer/phonenumbercache/PhoneNumberCacheBindings;->getCachedNumberLookupService()Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/calldetails/ReportDialogFragment;->cachedNumberLookupService:Lcom/android/dialer/phonenumbercache/CachedNumberLookupService;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/ReportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c004a

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 73
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090216

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/calldetails/ReportDialogFragment;->name:Landroid/widget/TextView;

    const v0, 0x7f090226

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/calldetails/ReportDialogFragment;->numberView:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/android/dialer/calldetails/ReportDialogFragment;->number:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/dialer/calldetails/ReportDialogFragment;->lookupContactInfo(Ljava/lang/String;)V

    .line 79
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/ReportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1103e8

    .line 81
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$rr7N09Bi7eLb33jMTeaaRUPE494;

    invoke-direct {v1, p0}, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$rr7N09Bi7eLb33jMTeaaRUPE494;-><init>(Lcom/android/dialer/calldetails/ReportDialogFragment;)V

    const v2, 0x104000a

    .line 82
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$GM93kfhRiEv0WKYmPkYrSjHo7y8;->INSTANCE:Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$GM93kfhRiEv0WKYmPkYrSjHo7y8;

    const/high16 v2, 0x1040000

    .line 83
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 87
    new-instance v0, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$qUtbibLsGpvBOtxe3YdowZr6fxM;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/calldetails/-$$Lambda$ReportDialogFragment$qUtbibLsGpvBOtxe3YdowZr6fxM;-><init>(Lcom/android/dialer/calldetails/ReportDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/ReportDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/calldetails/ReportDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/dialer/calldetails/ReportDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 165
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method
