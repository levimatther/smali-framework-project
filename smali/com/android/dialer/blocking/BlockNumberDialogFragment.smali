.class public Lcom/android/dialer/blocking/BlockNumberDialogFragment;
.super Landroid/app/DialogFragment;
.source "BlockNumberDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;
    }
.end annotation


# static fields
.field private static final ARG_BLOCK_ID:Ljava/lang/String; = "argBlockId"

.field private static final ARG_COUNTRY_ISO:Ljava/lang/String; = "argCountryIso"

.field private static final ARG_DISPLAY_NUMBER:Ljava/lang/String; = "argDisplayNumber"

.field private static final ARG_NUMBER:Ljava/lang/String; = "argNumber"

.field private static final ARG_PARENT_VIEW_ID:Ljava/lang/String; = "parentViewId"

.field private static final BLOCK_DIALOG_FRAGMENT:Ljava/lang/String; = "BlockNumberDialog"


# instance fields
.field private mCallback:Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;

.field private mCountryIso:Ljava/lang/String;

.field private mDisplayNumber:Ljava/lang/String;

.field private mHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

.field private mNumber:Ljava/lang/String;

.field private mParentView:Landroid/view/View;

.field private mVoicemailEnabledChecker:Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/blocking/BlockNumberDialogFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->unblockNumber()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/dialer/blocking/BlockNumberDialogFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->blockNumber()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/blocking/BlockNumberDialogFragment;)Landroid/view/View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mParentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/dialer/blocking/BlockNumberDialogFragment;)Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    return-object p0
.end method

.method private blockNumber()V
    .locals 8

    .line 216
    invoke-direct {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getBlockedMessage()Ljava/lang/CharSequence;

    move-result-object v4

    .line 217
    invoke-direct {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getUnblockedMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 218
    iget-object v6, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mCallback:Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;

    .line 219
    invoke-direct {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getActionTextColor()I

    move-result v5

    .line 220
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 222
    new-instance v3, Lcom/android/dialer/blocking/BlockNumberDialogFragment$2;

    invoke-direct {v3, p0, v0, v6}, Lcom/android/dialer/blocking/BlockNumberDialogFragment$2;-><init>(Lcom/android/dialer/blocking/BlockNumberDialogFragment;Ljava/lang/CharSequence;Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;)V

    .line 233
    new-instance v7, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/dialer/blocking/BlockNumberDialogFragment$3;-><init>(Lcom/android/dialer/blocking/BlockNumberDialogFragment;Landroid/content/Context;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;Ljava/lang/CharSequence;ILcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;)V

    .line 263
    iget-object v0, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    iget-object v1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->blockNumber(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getActionTextColor()I
    .locals 2

    .line 212
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private getBlockedMessage()Ljava/lang/CharSequence;
    .locals 3

    .line 203
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mDisplayNumber:Ljava/lang/String;

    const v2, 0x7f110459

    .line 202
    invoke-static {v0, v2, v1}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getUnblockedMessage()Ljava/lang/CharSequence;
    .locals 3

    .line 208
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mDisplayNumber:Ljava/lang/String;

    const v2, 0x7f11045a

    .line 207
    invoke-static {v0, v2, v1}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static newInstance(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/dialer/blocking/BlockNumberDialogFragment;
    .locals 3

    .line 85
    new-instance v0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;

    invoke-direct {v0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;-><init>()V

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v2, "argBlockId"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    if-eqz p4, :cond_1

    .line 91
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p4, "parentViewId"

    invoke-virtual {v1, p4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const-string p0, "argNumber"

    .line 93
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "argCountryIso"

    .line 94
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "argDisplayNumber"

    .line 95
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v1}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static show(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/app/FragmentManager;Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;)Lcom/android/dialer/blocking/BlockNumberDialogFragment;
    .locals 0

    .line 71
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->newInstance(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/dialer/blocking/BlockNumberDialogFragment;

    move-result-object p0

    .line 74
    invoke-virtual {p0, p6}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->setCallback(Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;)V

    const-string p1, "BlockNumberDialog"

    .line 75
    invoke-virtual {p0, p5, p1}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object p0
.end method

.method private unblockNumber()V
    .locals 9

    .line 267
    invoke-direct {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getUnblockedMessage()Ljava/lang/CharSequence;

    move-result-object v4

    .line 268
    invoke-direct {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getBlockedMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 269
    iget-object v6, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mCallback:Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;

    .line 270
    invoke-direct {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getActionTextColor()I

    move-result v5

    .line 271
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 273
    new-instance v3, Lcom/android/dialer/blocking/BlockNumberDialogFragment$4;

    invoke-direct {v3, p0, v0, v6}, Lcom/android/dialer/blocking/BlockNumberDialogFragment$4;-><init>(Lcom/android/dialer/blocking/BlockNumberDialogFragment;Ljava/lang/CharSequence;Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;)V

    .line 284
    iget-object v7, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    new-instance v8, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/dialer/blocking/BlockNumberDialogFragment$5;-><init>(Lcom/android/dialer/blocking/BlockNumberDialogFragment;Landroid/content/Context;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Ljava/lang/CharSequence;ILcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argBlockId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 284
    invoke-virtual {v7, v8, v0}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;->unblock(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 175
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 176
    iget-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mCountryIso:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mNumber:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/android/dialer/blocking/FilteredNumbersUtil;->canBlockNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->dismiss()V

    .line 180
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 182
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1102c5

    iget-object v2, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mDisplayNumber:Ljava/lang/String;

    .line 181
    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 179
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 112
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 113
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "argBlockId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    .line 115
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argNumber"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mNumber:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argDisplayNumber"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mDisplayNumber:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argCountryIso"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mCountryIso:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mDisplayNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mDisplayNumber:Ljava/lang/String;

    .line 123
    :cond_0
    new-instance v0, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    .line 124
    new-instance v0, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;

    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;-><init>(Landroid/content/Context;Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker$Callback;)V

    iput-object v0, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mVoicemailEnabledChecker:Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;

    .line 127
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "parentViewId"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_1

    const v0, 0x7f1104bb

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1104ba

    iget-object v4, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mDisplayNumber:Ljava/lang/String;

    .line 136
    invoke-static {v1, v3, v4}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 138
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110079

    iget-object v3, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mDisplayNumber:Ljava/lang/String;

    .line 141
    invoke-static {v0, v1, v3}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f11007c

    .line 143
    invoke-virtual {p0, v1}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dialer/blocking/FilteredNumberCompat;->useNewFiltering(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f110076

    .line 145
    invoke-virtual {p0, v3}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 146
    :cond_2
    iget-object v3, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mVoicemailEnabledChecker:Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;

    invoke-virtual {v3}, Lcom/android/dialer/voicemailstatus/VisualVoicemailEnabledChecker;->isVisualVoicemailEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f110078

    .line 147
    invoke-virtual {p0, v3}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const v3, 0x7f110077

    .line 149
    invoke-virtual {p0, v3}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 153
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/android/dialer/blocking/BlockNumberDialogFragment$1;

    invoke-direct {v3, p0, p1}, Lcom/android/dialer/blocking/BlockNumberDialogFragment$1;-><init>(Lcom/android/dialer/blocking/BlockNumberDialogFragment;Z)V

    .line 157
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 169
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->dismiss()V

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mCallback:Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;

    .line 194
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    return-void
.end method

.method public setCallback(Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mCallback:Lcom/android/dialer/blocking/BlockNumberDialogFragment$Callback;

    return-void
.end method

.method public setFilteredNumberAsyncQueryHandlerForTesting(Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/dialer/blocking/BlockNumberDialogFragment;->mHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    return-void
.end method
