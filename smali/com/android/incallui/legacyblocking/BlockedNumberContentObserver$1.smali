.class Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver$1;
.super Ljava/lang/Object;
.source "BlockedNumberContentObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;


# direct methods
.method constructor <init>(Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver$1;->this$0:Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver$1;->this$0:Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;

    invoke-static {v0}, Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;->access$000(Lcom/android/incallui/legacyblocking/BlockedNumberContentObserver;)V

    return-void
.end method
