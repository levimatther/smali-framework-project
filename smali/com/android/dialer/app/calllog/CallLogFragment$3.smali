.class Lcom/android/dialer/app/calllog/CallLogFragment$3;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/CallLogFragment;->onCallsFetched(Landroid/database/Cursor;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/CallLogFragment;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/app/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogFragment;->access$400(Lcom/android/dialer/app/calllog/CallLogFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method
