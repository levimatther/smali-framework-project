.class Lcom/android/incallui/InCallCsRedialHandler$3;
.super Ljava/lang/Object;
.source "InCallCsRedialHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$dialString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallCsRedialHandler;Ljava/lang/String;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/android/incallui/InCallCsRedialHandler$3;->this$0:Lcom/android/incallui/InCallCsRedialHandler;

    iput-object p2, p0, Lcom/android/incallui/InCallCsRedialHandler$3;->val$dialString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 246
    iget-object p1, p0, Lcom/android/incallui/InCallCsRedialHandler$3;->this$0:Lcom/android/incallui/InCallCsRedialHandler;

    iget-object p2, p0, Lcom/android/incallui/InCallCsRedialHandler$3;->val$dialString:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/incallui/InCallCsRedialHandler;->access$100(Lcom/android/incallui/InCallCsRedialHandler;Ljava/lang/String;)V

    return-void
.end method
