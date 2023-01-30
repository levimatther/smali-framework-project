.class Lcom/android/dialer/app/calllog/MSimCallLogFragment$3;
.super Ljava/lang/Object;
.source "MSimCallLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/MSimCallLogFragment;->onCallsFetched(Landroid/database/Cursor;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$3;->this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$3;->this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$3;->this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$3;->this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->access$300(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method
