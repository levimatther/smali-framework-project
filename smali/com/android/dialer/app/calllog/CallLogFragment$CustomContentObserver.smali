.class public Lcom/android/dialer/app/calllog/CallLogFragment$CustomContentObserver;
.super Landroid/database/ContentObserver;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CustomContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/CallLogFragment;


# direct methods
.method public constructor <init>(Lcom/android/dialer/app/calllog/CallLogFragment;)V
    .locals 0

    .line 935
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment$CustomContentObserver;->this$0:Lcom/android/dialer/app/calllog/CallLogFragment;

    .line 936
    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogFragment;->access$500(Lcom/android/dialer/app/calllog/CallLogFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 941
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogFragment$CustomContentObserver;->this$0:Lcom/android/dialer/app/calllog/CallLogFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/dialer/app/calllog/CallLogFragment;->access$602(Lcom/android/dialer/app/calllog/CallLogFragment;Z)Z

    return-void
.end method
