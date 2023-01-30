.class public Lcom/android/incallui/rtt/bindings/RttBindings;
.super Ljava/lang/Object;
.source "RttBindings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRttCallScreen(Ljava/lang/String;)Lcom/android/incallui/rtt/protocol/RttCallScreen;
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/android/incallui/rtt/impl/RttChatFragment;->newInstance(Ljava/lang/String;)Lcom/android/incallui/rtt/impl/RttChatFragment;

    move-result-object p0

    return-object p0
.end method
