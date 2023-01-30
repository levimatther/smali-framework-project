.class public final enum Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;
.super Ljava/lang/Enum;
.source "PrivacyCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

.field public static final enum aliaslink:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

.field public static final enum aliasoff:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

.field public static final enum aliason:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

.field public static final enum fetchsettings:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

    const-string v1, "fetchsettings"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;->fetchsettings:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

    .line 19
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

    const-string v1, "aliason"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;->aliason:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

    .line 24
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

    const-string v1, "aliasoff"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;->aliasoff:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

    .line 29
    new-instance v0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

    const-string v1, "aliaslink"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;->aliaslink:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

    .line 10
    sget-object v6, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;->fetchsettings:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

    aput-object v6, v1, v2

    sget-object v2, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;->aliason:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;->aliasoff:Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;->$VALUES:[Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;
    .locals 1

    .line 10
    const-class v0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

    return-object p0
.end method

.method public static values()[Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;
    .locals 1

    .line 10
    sget-object v0, Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;->$VALUES:[Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

    invoke-virtual {v0}, [Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tct/cs/services/rcs/chatbot/PrivacyCommand$Action;

    return-object v0
.end method
