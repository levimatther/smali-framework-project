.class public Lcom/android/incallui/incall/bindings/InCallBindings;
.super Ljava/lang/Object;
.source "InCallBindings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInCallScreen()Lcom/android/incallui/incall/protocol/InCallScreen;
    .locals 1

    .line 26
    new-instance v0, Lcom/android/incallui/incall/impl/InCallFragment;

    invoke-direct {v0}, Lcom/android/incallui/incall/impl/InCallFragment;-><init>()V

    return-object v0
.end method
