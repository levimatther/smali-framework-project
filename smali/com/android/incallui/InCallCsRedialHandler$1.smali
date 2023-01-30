.class Lcom/android/incallui/InCallCsRedialHandler$1;
.super Ljava/lang/Object;
.source "InCallCsRedialHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallCsRedialHandler;->showCsRedialDialogOnDisconnect(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallCsRedialHandler;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallCsRedialHandler;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/android/incallui/InCallCsRedialHandler$1;->this$0:Lcom/android/incallui/InCallCsRedialHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "showCsRedialDialogOnDisconnect calling onDialogDismissed"

    .line 258
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object p1, p0, Lcom/android/incallui/InCallCsRedialHandler$1;->this$0:Lcom/android/incallui/InCallCsRedialHandler;

    invoke-static {p1}, Lcom/android/incallui/InCallCsRedialHandler;->access$000(Lcom/android/incallui/InCallCsRedialHandler;)V

    return-void
.end method
