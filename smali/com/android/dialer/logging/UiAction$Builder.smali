.class public final Lcom/android/dialer/logging/UiAction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "UiAction.java"

# interfaces
.implements Lcom/android/dialer/logging/UiActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/logging/UiAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/dialer/logging/UiAction;",
        "Lcom/android/dialer/logging/UiAction$Builder;",
        ">;",
        "Lcom/android/dialer/logging/UiActionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 403
    invoke-static {}, Lcom/android/dialer/logging/UiAction;->access$000()Lcom/android/dialer/logging/UiAction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/logging/UiAction$1;)V
    .locals 0

    .line 396
    invoke-direct {p0}, Lcom/android/dialer/logging/UiAction$Builder;-><init>()V

    return-void
.end method
