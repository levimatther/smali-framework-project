.class public final synthetic Lcom/android/dialer/persistentlog/-$$Lambda$PersistentLogger$6q3VH8YzPj8MXiAVVemvHJisnSk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/persistentlog/-$$Lambda$PersistentLogger$6q3VH8YzPj8MXiAVVemvHJisnSk;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/persistentlog/-$$Lambda$PersistentLogger$6q3VH8YzPj8MXiAVVemvHJisnSk;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/persistentlog/PersistentLogger;->lambda$initialize$1(Landroid/content/Context;)V

    return-void
.end method
