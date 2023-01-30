.class Lcom/android/dialer/app/list/ListsFragment$1;
.super Landroid/database/ContentObserver;
.source "ListsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/list/ListsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/ListsFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/list/ListsFragment;Landroid/os/Handler;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/dialer/app/list/ListsFragment$1;->this$0:Lcom/android/dialer/app/list/ListsFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 92
    iget-object p1, p0, Lcom/android/dialer/app/list/ListsFragment$1;->this$0:Lcom/android/dialer/app/list/ListsFragment;

    invoke-static {p1}, Lcom/android/dialer/app/list/ListsFragment;->access$000(Lcom/android/dialer/app/list/ListsFragment;)Lcom/android/dialer/database/CallLogQueryHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/database/CallLogQueryHandler;->fetchVoicemailStatus()V

    return-void
.end method
