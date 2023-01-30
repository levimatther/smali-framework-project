.class public Lcom/android/dialer/app/calllog/MSimCallLogFragment$CustomContentObserver;
.super Landroid/database/ContentObserver;
.source "MSimCallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/MSimCallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CustomContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;


# direct methods
.method public constructor <init>(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$CustomContentObserver;->this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;

    .line 701
    invoke-static {p1}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->access$400(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 706
    iget-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$CustomContentObserver;->this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->access$502(Lcom/android/dialer/app/calllog/MSimCallLogFragment;Z)Z

    return-void
.end method
