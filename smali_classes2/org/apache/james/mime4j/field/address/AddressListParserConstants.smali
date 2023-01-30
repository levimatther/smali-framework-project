.class public interface abstract Lorg/apache/james/mime4j/field/address/AddressListParserConstants;
.super Ljava/lang/Object;
.source "AddressListParserConstants.java"


# static fields
.field public static final ALPHA:I = 0xb

.field public static final ANY:I = 0x21

.field public static final ATEXT:I = 0xd

.field public static final COMMENT:I = 0x14

.field public static final DEFAULT:I = 0x0

.field public static final DIGIT:I = 0xc

.field public static final DOMAINLITERAL:I = 0x12

.field public static final DOTATOM:I = 0xe

.field public static final EOF:I = 0x0

.field public static final INCOMMENT:I = 0x2

.field public static final INDOMAINLITERAL:I = 0x1

.field public static final INQUOTEDSTRING:I = 0x4

.field public static final NESTED_COMMENT:I = 0x3

.field public static final QUOTEDPAIR:I = 0x20

.field public static final QUOTEDSTRING:I = 0x1f

.field public static final WS:I = 0xa

.field public static final tokenImage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    const-string v0, "<EOF>"

    const-string v1, "\"\\r\""

    const-string v2, "\"\\n\""

    const-string v3, "\",\""

    const-string v4, "\":\""

    const-string v5, "\";\""

    const-string v6, "\"<\""

    const-string v7, "\">\""

    const-string v8, "\"@\""

    const-string v9, "\".\""

    const-string v10, "<WS>"

    const-string v11, "<ALPHA>"

    const-string v12, "<DIGIT>"

    const-string v13, "<ATEXT>"

    const-string v14, "<DOTATOM>"

    const-string v15, "\"[\""

    const-string v16, "<token of kind 16>"

    const-string v17, "<token of kind 17>"

    const-string v18, "\"]\""

    const-string v19, "\"(\""

    const-string v20, "\")\""

    const-string v21, "<token of kind 21>"

    const-string v22, "\"(\""

    const-string v23, "<token of kind 23>"

    const-string v24, "<token of kind 24>"

    const-string v25, "\"(\""

    const-string v26, "\")\""

    const-string v27, "<token of kind 27>"

    const-string v28, "\"\\\"\""

    const-string v29, "<token of kind 29>"

    const-string v30, "<token of kind 30>"

    const-string v31, "\"\\\"\""

    const-string v32, "<QUOTEDPAIR>"

    const-string v33, "<ANY>"

    .line 64
    filled-new-array/range {v0 .. v33}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/address/AddressListParserConstants;->tokenImage:[Ljava/lang/String;

    return-void
.end method
