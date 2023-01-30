.class public interface abstract Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserConstants;
.super Ljava/lang/Object;
.source "ContentLanguageParserConstants.java"


# static fields
.field public static final ALPHA:I = 0x12

.field public static final ALPHANUM:I = 0x13

.field public static final ANY:I = 0x16

.field public static final COMMENT:I = 0x5

.field public static final DEFAULT:I = 0x0

.field public static final DIGITS:I = 0x11

.field public static final DOT:I = 0x14

.field public static final EOF:I = 0x0

.field public static final INCOMMENT:I = 0x1

.field public static final INQUOTEDSTRING:I = 0x3

.field public static final NESTED_COMMENT:I = 0x2

.field public static final QUOTEDPAIR:I = 0x15

.field public static final QUOTEDSTRING:I = 0x10

.field public static final WS:I = 0x3

.field public static final tokenImage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const-string v0, "<EOF>"

    const-string v1, "\",\""

    const-string v2, "\"-\""

    const-string v3, "<WS>"

    const-string v4, "\"(\""

    const-string v5, "\")\""

    const-string v6, "<token of kind 6>"

    const-string v7, "\"(\""

    const-string v8, "<token of kind 8>"

    const-string v9, "<token of kind 9>"

    const-string v10, "\"(\""

    const-string v11, "\")\""

    const-string v12, "<token of kind 12>"

    const-string v13, "\"\\\"\""

    const-string v14, "<token of kind 14>"

    const-string v15, "<token of kind 15>"

    const-string v16, "\"\\\"\""

    const-string v17, "<DIGITS>"

    const-string v18, "<ALPHA>"

    const-string v19, "<ALPHANUM>"

    const-string v20, "\".\""

    const-string v21, "<QUOTEDPAIR>"

    const-string v22, "<ANY>"

    .line 60
    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserConstants;->tokenImage:[Ljava/lang/String;

    return-void
.end method
