.class Lcom/android/incallui/BottomSheetHelper$2;
.super Ljava/lang/Object;
.source "BottomSheetHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/BottomSheetHelper;->displayModifyCallOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/BottomSheetHelper;

.field final synthetic val$itemToCallType:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/incallui/BottomSheetHelper;Ljava/util/ArrayList;)V
    .locals 0

    .line 810
    iput-object p1, p0, Lcom/android/incallui/BottomSheetHelper$2;->this$0:Lcom/android/incallui/BottomSheetHelper;

    iput-object p2, p0, Lcom/android/incallui/BottomSheetHelper$2;->val$itemToCallType:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 813
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper$2;->val$itemToCallType:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Videocall: ModifyCall: upgrade/downgrade to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-static {p2}, Lcom/android/incallui/QtiCallUtils;->callTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 814
    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/android/incallui/BottomSheetHelper$2;->this$0:Lcom/android/incallui/BottomSheetHelper;

    invoke-static {v0}, Lcom/android/incallui/BottomSheetHelper;->access$100(Lcom/android/incallui/BottomSheetHelper;)Lcom/android/incallui/call/DialerCall;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/incallui/BottomSheetHelper;->access$200(Lcom/android/incallui/BottomSheetHelper;Lcom/android/incallui/call/DialerCall;I)V

    .line 817
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
