.class public Lcom/android/contacts/common/Bindings;
.super Ljava/lang/Object;
.source "Bindings.java"


# static fields
.field private static instance:Lcom/android/contacts/common/bindings/ContactsCommonBindings;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/contacts/common/bindings/ContactsCommonBindings;
    .locals 1

    .line 33
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/android/contacts/common/Bindings;->instance:Lcom/android/contacts/common/bindings/ContactsCommonBindings;

    if-eqz v0, :cond_0

    return-object v0

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 39
    instance-of v0, p0, Lcom/android/contacts/common/bindings/ContactsCommonBindingsFactory;

    if-eqz v0, :cond_1

    .line 40
    check-cast p0, Lcom/android/contacts/common/bindings/ContactsCommonBindingsFactory;

    invoke-interface {p0}, Lcom/android/contacts/common/bindings/ContactsCommonBindingsFactory;->newContactsCommonBindings()Lcom/android/contacts/common/bindings/ContactsCommonBindings;

    move-result-object p0

    sput-object p0, Lcom/android/contacts/common/Bindings;->instance:Lcom/android/contacts/common/bindings/ContactsCommonBindings;

    .line 43
    :cond_1
    sget-object p0, Lcom/android/contacts/common/Bindings;->instance:Lcom/android/contacts/common/bindings/ContactsCommonBindings;

    if-nez p0, :cond_2

    .line 44
    new-instance p0, Lcom/android/contacts/common/bindings/ContactsCommonBindingsStub;

    invoke-direct {p0}, Lcom/android/contacts/common/bindings/ContactsCommonBindingsStub;-><init>()V

    sput-object p0, Lcom/android/contacts/common/Bindings;->instance:Lcom/android/contacts/common/bindings/ContactsCommonBindings;

    .line 46
    :cond_2
    sget-object p0, Lcom/android/contacts/common/Bindings;->instance:Lcom/android/contacts/common/bindings/ContactsCommonBindings;

    return-object p0
.end method

.method public static setForTesting(Lcom/android/contacts/common/bindings/ContactsCommonBindings;)V
    .locals 0

    .line 50
    sput-object p0, Lcom/android/contacts/common/Bindings;->instance:Lcom/android/contacts/common/bindings/ContactsCommonBindings;

    return-void
.end method
