.class Lcom/android/incallui/InCallActivityCommon$4;
.super Ljava/lang/Object;
.source "InCallActivityCommon.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivityCommon;->showErrorDialog(Landroid/app/Dialog;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivityCommon;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivityCommon;)V
    .locals 0

    .line 645
    iput-object p1, p0, Lcom/android/incallui/InCallActivityCommon$4;->this$0:Lcom/android/incallui/InCallActivityCommon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 648
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon$4;->this$0:Lcom/android/incallui/InCallActivityCommon;

    invoke-static {p1}, Lcom/android/incallui/InCallActivityCommon;->access$100(Lcom/android/incallui/InCallActivityCommon;)Landroid/app/TctDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/TctDialog;->dismiss()V

    return-void
.end method
