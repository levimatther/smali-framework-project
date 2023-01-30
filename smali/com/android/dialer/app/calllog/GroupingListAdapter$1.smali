.class Lcom/android/dialer/app/calllog/GroupingListAdapter$1;
.super Landroid/database/ContentObserver;
.source "GroupingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/GroupingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/GroupingListAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/GroupingListAdapter;Landroid/os/Handler;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter$1;->this$0:Lcom/android/dialer/app/calllog/GroupingListAdapter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter$1;->this$0:Lcom/android/dialer/app/calllog/GroupingListAdapter;

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/GroupingListAdapter;->onContentChanged()V

    return-void
.end method
