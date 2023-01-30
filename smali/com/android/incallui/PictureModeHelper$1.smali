.class Lcom/android/incallui/PictureModeHelper$1;
.super Ljava/lang/Object;
.source "PictureModeHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/PictureModeHelper;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/PictureModeHelper;

.field final synthetic val$incomingVideo:Landroid/widget/CheckBox;

.field final synthetic val$previewVideo:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/incallui/PictureModeHelper;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/incallui/PictureModeHelper$1;->this$0:Lcom/android/incallui/PictureModeHelper;

    iput-object p2, p0, Lcom/android/incallui/PictureModeHelper$1;->val$previewVideo:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/incallui/PictureModeHelper$1;->val$incomingVideo:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 221
    iget-object p1, p0, Lcom/android/incallui/PictureModeHelper$1;->val$previewVideo:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-static {p1}, Lcom/android/incallui/PictureModeHelper;->access$002(Z)Z

    .line 222
    iget-object p1, p0, Lcom/android/incallui/PictureModeHelper$1;->val$incomingVideo:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-static {p1}, Lcom/android/incallui/PictureModeHelper;->access$102(Z)Z

    .line 223
    iget-object p1, p0, Lcom/android/incallui/PictureModeHelper$1;->this$0:Lcom/android/incallui/PictureModeHelper;

    invoke-virtual {p1}, Lcom/android/incallui/PictureModeHelper;->notifyOnSelectionChanged()V

    return-void
.end method
