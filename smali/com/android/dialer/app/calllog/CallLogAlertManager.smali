.class public Lcom/android/dialer/app/calllog/CallLogAlertManager;
.super Ljava/lang/Object;
.source "CallLogAlertManager.java"

# interfaces
.implements Lcom/android/dialer/app/alert/AlertManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/calllog/CallLogAlertManager$AlertViewHolder;
    }
.end annotation


# instance fields
.field private final adapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

.field private final container:Landroid/view/ViewGroup;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final parent:Landroid/view/ViewGroup;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/dialer/app/calllog/CallLogAdapter;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAlertManager;->adapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    .line 39
    iput-object p2, p0, Lcom/android/dialer/app/calllog/CallLogAlertManager;->inflater:Landroid/view/LayoutInflater;

    .line 40
    iput-object p3, p0, Lcom/android/dialer/app/calllog/CallLogAlertManager;->parent:Landroid/view/ViewGroup;

    const p1, 0x7f0c0043

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p2, p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAlertManager;->view:Landroid/view/View;

    const p2, 0x7f0900fe

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAlertManager;->container:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;)V
    .locals 1

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/dialer/app/calllog/CallLogAlertManager;->contains(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAlertManager;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAlertManager;->container:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 79
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAlertManager;->adapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->notifyItemInserted(I)V

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAlertManager;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 68
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAlertManager;->adapter:Lcom/android/dialer/app/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public contains(Landroid/view/View;)Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAlertManager;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public createViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAlertManager;->parent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "createViewHolder should be called with the same parent in constructor"

    invoke-static {p1, v1, v0}, Lcom/android/dialer/common/Assert;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 54
    new-instance p1, Lcom/android/dialer/app/calllog/CallLogAlertManager$AlertViewHolder;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAlertManager;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/dialer/app/calllog/CallLogAlertManager$AlertViewHolder;-><init>(Landroid/view/View;Lcom/android/dialer/app/calllog/CallLogAlertManager$1;)V

    return-object p1
.end method

.method public inflate(I)Landroid/view/View;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAlertManager;->inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAlertManager;->container:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAlertManager;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
