.class Lcom/android/incallui/BottomSheetHelper$1;
.super Ljava/lang/Object;
.source "BottomSheetHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/BottomSheetHelper;->displayCallTransferOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/BottomSheetHelper;

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/incallui/BottomSheetHelper;Ljava/util/ArrayList;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/android/incallui/BottomSheetHelper$1;->this$0:Lcom/android/incallui/BottomSheetHelper;

    iput-object p2, p0, Lcom/android/incallui/BottomSheetHelper$1;->val$items:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/incallui/BottomSheetHelper$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BottomSheetHelper.onCallTransferItemClicked"

    invoke-static {v2, v0, v1}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper$1;->this$0:Lcom/android/incallui/BottomSheetHelper;

    invoke-static {v0, p2}, Lcom/android/incallui/BottomSheetHelper;->access$000(Lcom/android/incallui/BottomSheetHelper;I)V

    .line 645
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
