.class Lcom/android/dialer/app/list/AllContactsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AllContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/list/AllContactsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/AllContactsFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/list/AllContactsFragment;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/dialer/app/list/AllContactsFragment$1;->this$0:Lcom/android/dialer/app/list/AllContactsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/android/dialer/app/list/AllContactsFragment$1;->this$0:Lcom/android/dialer/app/list/AllContactsFragment;

    invoke-static {p1}, Lcom/android/dialer/app/list/AllContactsFragment;->access$000(Lcom/android/dialer/app/list/AllContactsFragment;)V

    return-void
.end method
