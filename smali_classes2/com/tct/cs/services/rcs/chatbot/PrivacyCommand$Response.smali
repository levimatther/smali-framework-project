.class public final enum Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;
.super Ljava/lang/Enum;
.source "PrivacyCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

.field public static final enum failure:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

.field public static final enum off:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

.field public static final enum on:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

.field public static final enum unkown:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 36
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

    const-string v1, "unkown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;->unkown:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

    .line 40
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

    const-string v1, "failure"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;->failure:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

    .line 45
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

    const-string v1, "on"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;->on:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

    .line 50
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

    const-string v1, "off"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;->off:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

    .line 32
    sget-object v6, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;->unkown:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

    aput-object v6, v1, v2

    sget-object v2, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;->failure:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;->on:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;->$VALUES:[Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;
    .locals 1

    .line 32
    const-class v0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

    return-object p0
.end method

.method public static values()[Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;
    .locals 1

    .line 32
    sget-object v0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;->$VALUES:[Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

    invoke-virtual {v0}, [Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Response;

    return-object v0
.end method
