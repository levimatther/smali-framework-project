.class public Lcom/android/dialer/app/calllog/BlockReportSpamListener;
.super Ljava/lang/Object;
.source "BlockReportSpamListener.java"

# interfaces
.implements Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private final mContext:Landroid/content/Context;

.field private final mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

.field private final mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BlockReportSpamListener"

    .line 43
    iput-object v0, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->TAG:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->mFragmentManager:Landroid/app/FragmentManager;

    .line 52
    iput-object p3, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 53
    iput-object p4, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/app/calllog/BlockReportSpamListener;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/dialer/app/calllog/BlockReportSpamListener;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/dialer/app/calllog/BlockReportSpamListener;)Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;

    return-object p0
.end method


# virtual methods
.method public onBlock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;)V
    .locals 8

    .line 107
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->mContext:Landroid/content/Context;

    .line 109
    invoke-static {v0}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/spam/SpamBindings;->isSpamEnabled()Z

    move-result v0

    new-instance v7, Lcom/android/dialer/app/calllog/BlockReportSpamListener$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/dialer/app/calllog/BlockReportSpamListener$2;-><init>(Lcom/android/dialer/app/calllog/BlockReportSpamListener;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;)V

    const/4 p2, 0x0

    .line 107
    invoke-static {p1, v0, v7, p2}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockDialogFragment;->newInstance(Ljava/lang/String;ZLcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/DialogFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->mFragmentManager:Landroid/app/FragmentManager;

    const-string p3, "BlockDialog"

    .line 141
    invoke-virtual {p1, p2, p3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onBlockMenubar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;JLcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;)V
    .locals 12

    move-object v9, p0

    .line 195
    iget-object v0, v9, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->mContext:Landroid/content/Context;

    .line 197
    invoke-static {v0}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/spam/SpamBindings;->isSpamEnabled()Z

    move-result v10

    new-instance v11, Lcom/android/dialer/app/calllog/BlockReportSpamListener$4;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/dialer/app/calllog/BlockReportSpamListener$4;-><init>(Lcom/android/dialer/app/calllog/BlockReportSpamListener;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;JLcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;)V

    const/4 v0, 0x0

    move-object v1, p1

    move-object/from16 v2, p8

    .line 195
    invoke-static {p1, v10, v11, v0, v2}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockDialogFragment;->newInstanceMenubar(Ljava/lang/String;ZLcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;Landroid/content/DialogInterface$OnDismissListener;Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;)Landroid/app/DialogFragment;

    move-result-object v0

    iget-object v1, v9, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "BlockDialog"

    .line 239
    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onBlockReportSpam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;)V
    .locals 8

    .line 63
    iget-object v0, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {v0}, Lcom/android/dialer/spam/Spam;->get(Landroid/content/Context;)Lcom/android/dialer/spam/SpamBindings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/spam/SpamBindings;->isDialogReportSpamCheckedByDefault()Z

    move-result v0

    new-instance v7, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/dialer/app/calllog/BlockReportSpamListener$1;-><init>(Lcom/android/dialer/app/calllog/BlockReportSpamListener;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;)V

    const/4 p2, 0x0

    .line 63
    invoke-static {p1, v0, v7, p2}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$BlockReportSpamDialogFragment;->newInstance(Ljava/lang/String;ZLcom/android/dialer/blocking/BlockReportSpamDialogs$OnSpamDialogClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/DialogFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->mFragmentManager:Landroid/app/FragmentManager;

    const-string p3, "BlockReportSpamDialog"

    .line 97
    invoke-virtual {p1, p2, p3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onReportNotSpam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;)V
    .locals 7

    .line 300
    new-instance v6, Lcom/android/dialer/app/calllog/BlockReportSpamListener$6;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/app/calllog/BlockReportSpamListener$6;-><init>(Lcom/android/dialer/app/calllog/BlockReportSpamListener;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;)V

    const/4 p2, 0x0

    invoke-static {p1, v6, p2}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$ReportNotSpamDialogFragment;->newInstance(Ljava/lang/String;Lcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/DialogFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->mFragmentManager:Landroid/app/FragmentManager;

    const-string p3, "NotSpamDialog"

    .line 321
    invoke-virtual {p1, p2, p3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onUnblock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;ZLjava/lang/Integer;)V
    .locals 9

    .line 153
    new-instance v8, Lcom/android/dialer/app/calllog/BlockReportSpamListener$3;

    move-object v0, v8

    move-object v1, p0

    move v2, p6

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/dialer/app/calllog/BlockReportSpamListener$3;-><init>(Lcom/android/dialer/app/calllog/BlockReportSpamListener;ZLjava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    move-object v1, p1

    invoke-static {p1, p6, v8, v0}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->newInstance(Ljava/lang/String;ZLcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/DialogFragment;

    move-result-object v0

    move-object v1, p0

    iget-object v2, v1, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v3, "UnblockDialog"

    .line 184
    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onUnblockMenubar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;ZLjava/lang/Integer;JLcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;)V
    .locals 12

    .line 248
    new-instance v11, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p6

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p8

    move-object/from16 v9, p10

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/dialer/app/calllog/BlockReportSpamListener$5;-><init>(Lcom/android/dialer/app/calllog/BlockReportSpamListener;ZLjava/lang/String;Ljava/lang/String;ILcom/android/dialer/logging/ContactSource$Type;JLcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    move-object v1, p1

    move-object/from16 v3, p10

    invoke-static {p1, v2, v11, v0, v3}, Lcom/android/dialer/blocking/BlockReportSpamDialogs$UnblockDialogFragment;->newInstanceMenubar(Ljava/lang/String;ZLcom/android/dialer/blocking/BlockReportSpamDialogs$OnConfirmListener;Landroid/content/DialogInterface$OnDismissListener;Lcom/android/dialer/blocking/BlockReportSpamDialogs$UpdateMenubar;)Landroid/app/DialogFragment;

    move-result-object v0

    move-object v1, p0

    iget-object v2, v1, Lcom/android/dialer/app/calllog/BlockReportSpamListener;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v3, "UnblockDialog"

    .line 289
    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
