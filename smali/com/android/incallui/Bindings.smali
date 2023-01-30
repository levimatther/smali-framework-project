.class public Lcom/android/incallui/Bindings;
.super Ljava/lang/Object;
.source "Bindings.java"


# static fields
.field private static instance:Lcom/android/incallui/bindings/InCallUiBindings;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/incallui/bindings/InCallUiBindings;
    .locals 1

    .line 33
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/android/incallui/Bindings;->instance:Lcom/android/incallui/bindings/InCallUiBindings;

    if-eqz v0, :cond_0

    return-object v0

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 39
    instance-of v0, p0, Lcom/android/incallui/bindings/InCallUiBindingsFactory;

    if-eqz v0, :cond_1

    .line 40
    check-cast p0, Lcom/android/incallui/bindings/InCallUiBindingsFactory;

    invoke-interface {p0}, Lcom/android/incallui/bindings/InCallUiBindingsFactory;->newInCallUiBindings()Lcom/android/incallui/bindings/InCallUiBindings;

    move-result-object p0

    sput-object p0, Lcom/android/incallui/Bindings;->instance:Lcom/android/incallui/bindings/InCallUiBindings;

    .line 43
    :cond_1
    sget-object p0, Lcom/android/incallui/Bindings;->instance:Lcom/android/incallui/bindings/InCallUiBindings;

    if-nez p0, :cond_2

    .line 44
    new-instance p0, Lcom/android/incallui/bindings/InCallUiBindingsStub;

    invoke-direct {p0}, Lcom/android/incallui/bindings/InCallUiBindingsStub;-><init>()V

    sput-object p0, Lcom/android/incallui/Bindings;->instance:Lcom/android/incallui/bindings/InCallUiBindings;

    .line 46
    :cond_2
    sget-object p0, Lcom/android/incallui/Bindings;->instance:Lcom/android/incallui/bindings/InCallUiBindings;

    return-object p0
.end method

.method public static setForTesting(Lcom/android/incallui/bindings/InCallUiBindings;)V
    .locals 0

    .line 50
    sput-object p0, Lcom/android/incallui/Bindings;->instance:Lcom/android/incallui/bindings/InCallUiBindings;

    return-void
.end method
