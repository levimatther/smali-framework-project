.class public final enum Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;
.super Ljava/lang/Enum;
.source "GroupChat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/GroupChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

.field public static final enum GROUP_WARNING_MAXIMUM_ALLOWED:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

.field public static final enum GROUP_WARNING_OPEN_GROUP_ERROR:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

.field public static final enum GROUP_WARNING_SESSION_NOT_PARTICIPANTS:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

.field public static final enum GROUP_WARNING_SOMETHING_WENT_WRONG:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

.field public static final enum GROUP_WARNING_SOMETHING_WENT_WRONG_FOR_480:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

.field public static final enum INVITE_FAILED:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

.field public static final enum INVITE_WARNING:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

.field public static final enum LEAVE_FAILED:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

.field public static final enum REMOVE_FAILED:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

.field public static final enum REMOVE_WARNING:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 951
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    const-string v1, "LEAVE_FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->LEAVE_FAILED:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    .line 955
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    const-string v1, "INVITE_FAILED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->INVITE_FAILED:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    .line 960
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    const-string v1, "REMOVE_FAILED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->REMOVE_FAILED:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    .line 964
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    const-string v1, "INVITE_WARNING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->INVITE_WARNING:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    .line 968
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    const-string v1, "REMOVE_WARNING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->REMOVE_WARNING:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    .line 974
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    const-string v1, "GROUP_WARNING_SOMETHING_WENT_WRONG"

    const/4 v7, 0x5

    const/16 v8, 0x65

    invoke-direct {v0, v1, v7, v8}, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->GROUP_WARNING_SOMETHING_WENT_WRONG:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    .line 976
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    const-string v1, "GROUP_WARNING_MAXIMUM_ALLOWED"

    const/4 v8, 0x6

    const/16 v9, 0x66

    invoke-direct {v0, v1, v8, v9}, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->GROUP_WARNING_MAXIMUM_ALLOWED:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    .line 977
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    const-string v1, "GROUP_WARNING_OPEN_GROUP_ERROR"

    const/4 v9, 0x7

    const/16 v10, 0x67

    invoke-direct {v0, v1, v9, v10}, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->GROUP_WARNING_OPEN_GROUP_ERROR:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    .line 984
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    const-string v1, "GROUP_WARNING_SESSION_NOT_PARTICIPANTS"

    const/16 v10, 0x8

    const/16 v11, 0x68

    invoke-direct {v0, v1, v10, v11}, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->GROUP_WARNING_SESSION_NOT_PARTICIPANTS:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    .line 989
    new-instance v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    const-string v1, "GROUP_WARNING_SOMETHING_WENT_WRONG_FOR_480"

    const/16 v11, 0x9

    const/16 v12, 0x69

    invoke-direct {v0, v1, v11, v12}, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->GROUP_WARNING_SOMETHING_WENT_WRONG_FOR_480:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    .line 949
    sget-object v12, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->LEAVE_FAILED:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    aput-object v12, v1, v2

    sget-object v12, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->INVITE_FAILED:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    aput-object v12, v1, v3

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->REMOVE_FAILED:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    aput-object v3, v1, v4

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->INVITE_WARNING:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    aput-object v3, v1, v5

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->REMOVE_WARNING:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    aput-object v3, v1, v6

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->GROUP_WARNING_SOMETHING_WENT_WRONG:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    aput-object v3, v1, v7

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->GROUP_WARNING_MAXIMUM_ALLOWED:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    aput-object v3, v1, v8

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->GROUP_WARNING_OPEN_GROUP_ERROR:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    aput-object v3, v1, v9

    sget-object v3, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->GROUP_WARNING_SESSION_NOT_PARTICIPANTS:Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    aput-object v3, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->$VALUES:[Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    .line 993
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->mValueToEnum:Landroid/util/SparseArray;

    .line 996
    invoke-static {}, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->values()[Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 997
    sget-object v4, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1001
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1002
    iput p3, p0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->mValue:I

    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;
    .locals 3

    .line 1021
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    if-eqz v0, :cond_0

    return-object v0

    .line 1025
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/RcsIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum const class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/gsma/services/rcs/chat/GroupChat$State;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/RcsIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;
    .locals 1

    .line 949
    const-class v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    return-object p0
.end method

.method public static values()[Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;
    .locals 1

    .line 949
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->$VALUES:[Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .line 1011
    iget v0, p0, Lcom/gsma/services/rcs/chat/GroupChat$UserEvent;->mValue:I

    return v0
.end method
