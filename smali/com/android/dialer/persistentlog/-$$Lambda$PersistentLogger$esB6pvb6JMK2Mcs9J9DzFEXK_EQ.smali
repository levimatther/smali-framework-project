.class public final synthetic Lcom/android/dialer/persistentlog/-$$Lambda$PersistentLogger$esB6pvb6JMK2Mcs9J9DzFEXK_EQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/persistentlog/-$$Lambda$PersistentLogger$esB6pvb6JMK2Mcs9J9DzFEXK_EQ;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/persistentlog/-$$Lambda$PersistentLogger$esB6pvb6JMK2Mcs9J9DzFEXK_EQ;->f$0:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/dialer/persistentlog/PersistentLogger;->lambda$initialize$0(Landroid/content/Context;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
