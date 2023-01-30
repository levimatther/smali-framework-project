.class Lcom/android/dialer/app/DialpadActivity$1;
.super Ljava/lang/Object;
.source "DialpadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/DialpadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/DialpadActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/DialpadActivity;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/dialer/app/DialpadActivity$1;->this$0:Lcom/android/dialer/app/DialpadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/dialer/app/DialpadActivity$1;->this$0:Lcom/android/dialer/app/DialpadActivity;

    invoke-static {v0}, Lcom/android/dialer/app/DialpadActivity;->access$000(Lcom/android/dialer/app/DialpadActivity;)Lcom/android/dialer/database/DialerDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/database/DialerDatabaseHelper;->startSmartDialUpdateThread()V

    return-void
.end method
