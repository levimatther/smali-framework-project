.class public interface abstract Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserConstants;
.super Ljava/lang/Object;
.source "ContentDispositionParserConstants.java"


# static fields
.field public static final ANY:I = 0x16

.field public static final ATOKEN:I = 0x14

.field public static final COMMENT:I = 0x7

.field public static final DEFAULT:I = 0x0

.field public static final DIGITS:I = 0x13

.field public static final EOF:I = 0x0

.field public static final INCOMMENT:I = 0x1

.field public static final INQUOTEDSTRING:I = 0x3

.field public static final NESTED_COMMENT:I = 0x2

.field public static final QUOTEDPAIR:I = 0x15

.field public static final QUOTEDSTRING:I = 0x12

.field public static final WS:I = 0x5

.field public static final tokenImage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const-string v0, "<EOF>"

    const-string v1, "\"\\r\""

    const-string v2, "\"\\n\""

    const-string v3, "\";\""

    const-string v4, "\"=\""

    const-string v5, "<WS>"

    const-string v6, "\"(\""

    const-string v7, "\")\""

    const-string v8, "<token of kind 8>"

    const-string v9, "\"(\""

    const-string v10, "<token of kind 10>"

    const-string v11, "<token of kind 11>"

    const-string v12, "\"(\""

    const-string v13, "\")\""

    const-string v14, "<token of kind 14>"

    const-string v15, "\"\\\"\""

    const-string v16, "<token of kind 16>"

    const-string v17, "<token of kind 17>"

    const-string v18, "\"\\\"\""

    const-string v19, "<DIGITS>"

    const-string v20, "<ATOKEN>"

    const-string v21, "<QUOTEDPAIR>"

    const-string v22, "<ANY>"

    .line 56
    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserConstants;->tokenImage:[Ljava/lang/String;

    return-void
.end method
