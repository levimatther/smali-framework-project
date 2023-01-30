.class public final Lcom/android/dialer/calllog/ui/NewCallLogFragment;
.super Landroid/app/Fragment;
.source "NewCallLogFragment.java"

# interfaces
.implements Lcom/android/dialer/calllog/CallLogFramework$CallLogUi;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Lcom/android/dialer/calllog/CallLogFramework$CallLogUi;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final WAIT_MILLIS:J = 0x64L


# instance fields
.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private refreshAnnotatedCallLogTask:Lcom/android/dialer/common/concurrent/DialerExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/common/concurrent/DialerExecutor<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, "NewCallLogFragment.NewCallLogFragment"

    .line 56
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    return-void
.end method

.method private checkAnnotatedCallLogDirtyAndRefreshIfNecessary()V
    .locals 4

    const-string v0, "NewCallLogFragment.checkAnnotatedCallLogDirtyAndRefreshIfNecessary"

    .line 125
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/dialer/calllog/ui/NewCallLogFragment;->refreshAnnotatedCallLogTask:Lcom/android/dialer/common/concurrent/DialerExecutor;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/common/concurrent/DialerExecutor;->executeSerialWithWait(Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
.method public invalidateUi()V
    .locals 4

    const-string v0, "NewCallLogFragment.invalidateUi"

    .line 131
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/dialer/calllog/ui/NewCallLogFragment;->refreshAnnotatedCallLogTask:Lcom/android/dialer/common/concurrent/DialerExecutor;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/common/concurrent/DialerExecutor;->executeSerialWithWait(Ljava/lang/Object;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 61
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "NewCallLogFragment.onCreate"

    .line 63
    invoke-static {p1}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/dialer/calllog/ui/NewCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/dialer/calllog/CallLogComponent;->get(Landroid/content/Context;)Lcom/android/dialer/calllog/CallLogComponent;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/android/dialer/calllog/CallLogComponent;->callLogFramework()Lcom/android/dialer/calllog/CallLogFramework;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p0}, Lcom/android/dialer/calllog/CallLogFramework;->attachUi(Lcom/android/dialer/calllog/CallLogFramework$CallLogUi;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/dialer/calllog/ui/NewCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/common/concurrent/DialerExecutorComponent;->get(Landroid/content/Context;)Lcom/android/dialer/common/concurrent/DialerExecutorComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/common/concurrent/DialerExecutorComponent;->dialerExecutorFactory()Lcom/android/dialer/common/concurrent/DialerExecutorFactory;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/android/dialer/calllog/ui/NewCallLogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 77
    invoke-virtual {p1}, Lcom/android/dialer/calllog/CallLogComponent;->getRefreshAnnotatedCallLogWorker()Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;

    move-result-object p1

    const-string v2, "NewCallLogFragment.refreshAnnotatedCallLog"

    .line 74
    invoke-interface {v0, v1, v2, p1}, Lcom/android/dialer/common/concurrent/DialerExecutorFactory;->createUiTaskBuilder(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/dialer/common/concurrent/DialerExecutor$Worker;)Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;

    move-result-object p1

    .line 78
    invoke-interface {p1}, Lcom/android/dialer/common/concurrent/DialerExecutor$Builder;->build()Lcom/android/dialer/common/concurrent/DialerExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/calllog/ui/NewCallLogFragment;->refreshAnnotatedCallLogTask:Lcom/android/dialer/common/concurrent/DialerExecutor;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const-string p1, "NewCallLogFragment.onCreateLoader"

    .line 137
    invoke-static {p1}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 139
    new-instance p1, Landroid/content/CursorLoader;

    .line 140
    invoke-virtual {p0}, Lcom/android/dialer/calllog/ui/NewCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/calllog/database/contract/AnnotatedCallLogContract$CoalescedAnnotatedCallLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "NewCallLogFragment.onCreateView"

    .line 114
    invoke-static {p3}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    const p3, 0x7f0c00c8

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09021c

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/android/dialer/calllog/ui/NewCallLogFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    invoke-virtual {p0}, Lcom/android/dialer/calllog/ui/NewCallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, v0, p3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const-string p1, "NewCallLogFragment.onLoadFinished"

    .line 145
    invoke-static {p1}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/android/dialer/calllog/ui/NewCallLogFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/ui/NewCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 149
    iget-object p1, p0, Lcom/android/dialer/calllog/ui/NewCallLogFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/dialer/calllog/ui/NewCallLogAdapter;

    invoke-direct {v0, p2}, Lcom/android/dialer/calllog/ui/NewCallLogAdapter;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/calllog/ui/NewCallLogFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    const-string p1, "NewCallLogFragment.onLoaderReset"

    .line 154
    invoke-static {p1}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/android/dialer/calllog/ui/NewCallLogFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 103
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    const-string v0, "NewCallLogFragment.onPause"

    .line 105
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/dialer/calllog/ui/NewCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogComponent;->get(Landroid/content/Context;)Lcom/android/dialer/calllog/CallLogComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogComponent;->callLogFramework()Lcom/android/dialer/calllog/CallLogFramework;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFramework;->detachUi()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 90
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const-string v0, "NewCallLogFragment.onResume"

    .line 92
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/dialer/calllog/ui/NewCallLogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogComponent;->get(Landroid/content/Context;)Lcom/android/dialer/calllog/CallLogComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogComponent;->callLogFramework()Lcom/android/dialer/calllog/CallLogFramework;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p0}, Lcom/android/dialer/calllog/CallLogFramework;->attachUi(Lcom/android/dialer/calllog/CallLogFramework$CallLogUi;)V

    .line 98
    invoke-direct {p0}, Lcom/android/dialer/calllog/ui/NewCallLogFragment;->checkAnnotatedCallLogDirtyAndRefreshIfNecessary()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    const-string v0, "NewCallLogFragment.onStart"

    .line 85
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    return-void
.end method
