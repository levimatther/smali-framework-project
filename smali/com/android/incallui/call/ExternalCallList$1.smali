.class Lcom/android/incallui/call/ExternalCallList$1;
.super Landroid/telecom/Call$Callback;
.source "ExternalCallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/call/ExternalCallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/call/ExternalCallList;


# direct methods
.method constructor <init>(Lcom/android/incallui/call/ExternalCallList;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/incallui/call/ExternalCallList$1;->this$0:Lcom/android/incallui/call/ExternalCallList;

    invoke-direct {p0}, Landroid/telecom/Call$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;)V
    .locals 0

    .line 45
    iget-object p2, p0, Lcom/android/incallui/call/ExternalCallList$1;->this$0:Lcom/android/incallui/call/ExternalCallList;

    invoke-static {p2, p1}, Lcom/android/incallui/call/ExternalCallList;->access$000(Lcom/android/incallui/call/ExternalCallList;Landroid/telecom/Call;)V

    return-void
.end method
