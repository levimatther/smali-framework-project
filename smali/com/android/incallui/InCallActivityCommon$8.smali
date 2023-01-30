.class Lcom/android/incallui/InCallActivityCommon$8;
.super Ljava/lang/Object;
.source "InCallActivityCommon.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivityCommon;->showRttEndDialog()V
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

    .line 704
    iput-object p1, p0, Lcom/android/incallui/InCallActivityCommon$8;->this$0:Lcom/android/incallui/InCallActivityCommon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 707
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon$8;->this$0:Lcom/android/incallui/InCallActivityCommon;

    invoke-static {p1, p2}, Lcom/android/incallui/InCallActivityCommon;->access$302(Lcom/android/incallui/InCallActivityCommon;Z)Z

    .line 708
    iget-object p1, p0, Lcom/android/incallui/InCallActivityCommon$8;->this$0:Lcom/android/incallui/InCallActivityCommon;

    invoke-static {p1}, Lcom/android/incallui/InCallActivityCommon;->access$400(Lcom/android/incallui/InCallActivityCommon;)Landroid/app/TctDialog;

    move-result-object p1

    if-eqz p2, :cond_0

    const p2, 0x7f110409

    goto :goto_0

    :cond_0
    const p2, 0x7f110408

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/TctDialog;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    return-void
.end method
