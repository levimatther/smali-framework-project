.class public Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;
.super Ljava/lang/Object;
.source "ContentLanguageParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserConstants;


# static fields
.field private static jj_la1_0:[I


# instance fields
.field private jj_expentries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private jj_expentry:[I

.field private jj_gen:I

.field jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

.field private jj_kind:I

.field private final jj_la1:[I

.field public jj_nt:Lorg/apache/james/mime4j/field/language/parser/Token;

.field private jj_ntk:I

.field private languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public token:Lorg/apache/james/mime4j/field/language/parser/Token;

.field public token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 116
    invoke-static {}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1_init_0()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->languages:Ljava/util/List;

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 113
    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/List;

    const/4 v1, -0x1

    .line 231
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    .line 128
    :try_start_0
    new-instance v2, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-direct {v2, p1, p2, v3, v3}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    new-instance p1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    iget-object p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-direct {p1, p2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    .line 130
    new-instance p1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 131
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    const/4 p1, 0x0

    .line 132
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    :goto_0
    if-ge p1, v0, :cond_0

    .line 133
    iget-object p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 128
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->languages:Ljava/util/List;

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 113
    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/List;

    const/4 v1, -0x1

    .line 231
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    .line 152
    new-instance v2, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3, v3}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    .line 153
    new-instance p1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-direct {p1, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    .line 154
    new-instance p1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 155
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    const/4 p1, 0x0

    .line 156
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    :goto_0
    if-ge p1, v0, :cond_0

    .line 157
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput v1, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;)V
    .locals 3

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->languages:Ljava/util/List;

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 113
    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/List;

    const/4 v1, -0x1

    .line 231
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    .line 172
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    .line 173
    new-instance p1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 174
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    const/4 p1, 0x0

    .line 175
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    :goto_0
    if-ge p1, v0, :cond_0

    .line 176
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput v1, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final doParse()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/language/parser/ParseException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->language()Ljava/lang/String;

    .line 47
    :goto_0
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 52
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    aput v2, v0, v1

    .line 58
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->languages:Ljava/util/List;

    return-object v0

    .line 55
    :cond_1
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 56
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->language()Ljava/lang/String;

    goto :goto_0
.end method

.method private jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/language/parser/ParseException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    goto :goto_0

    .line 191
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    :goto_0
    const/4 v1, -0x1

    .line 192
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    .line 193
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget v1, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->kind:I

    if-ne v1, p1, :cond_1

    .line 194
    iget p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    .line 195
    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    return-object p1

    .line 197
    :cond_1
    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 198
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    .line 199
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->generateParseException()Lorg/apache/james/mime4j/field/language/parser/ParseException;

    move-result-object p1

    throw p1
.end method

.method private static jj_la1_init_0()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 119
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1_0:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x80004
        0x80004
    .end array-data
.end method

.method private jj_ntk()I
    .locals 2

    .line 223
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_nt:Lorg/apache/james/mime4j/field/language/parser/Token;

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    return v0

    .line 226
    :cond_0
    iget v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    return v0
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    .line 142
    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    iget-object p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {p1, p2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    .line 144
    new-instance p1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    const/4 p1, -0x1

    .line 145
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    const/4 p2, 0x0

    .line 146
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    :goto_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput p1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 142
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 163
    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    .line 164
    new-instance p1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    const/4 p1, -0x1

    .line 165
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 167
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;)V
    .locals 2

    .line 181
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    .line 182
    new-instance p1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    const/4 p1, -0x1

    .line 183
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    const/4 v0, 0x0

    .line 184
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 185
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final disable_tracing()V
    .locals 0

    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    return-void
.end method

.method public generateParseException()Lorg/apache/james/mime4j/field/language/parser/ParseException;
    .locals 8

    .line 235
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/16 v0, 0x17

    new-array v1, v0, [Z

    .line 237
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    .line 238
    aput-boolean v3, v1, v2

    const/4 v2, -0x1

    .line 239
    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    :cond_0
    const/4 v2, 0x0

    move v4, v2

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_3

    .line 242
    iget-object v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aget v5, v5, v4

    iget v6, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    if-ne v5, v6, :cond_2

    move v5, v2

    :goto_1
    const/16 v6, 0x20

    if-ge v5, v6, :cond_2

    .line 244
    sget-object v6, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1_0:[I

    aget v6, v6, v4

    shl-int v7, v3, v5

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    .line 245
    aput-boolean v3, v1, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_5

    .line 251
    aget-boolean v5, v1, v4

    if-eqz v5, :cond_4

    new-array v5, v3, [I

    .line 252
    iput-object v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentry:[I

    aput v4, v5, v2

    .line 254
    iget-object v6, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 257
    :cond_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[I

    .line 258
    :goto_3
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 259
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 261
    :cond_6
    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/ParseException;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    sget-object v3, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/james/mime4j/field/language/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/language/parser/Token;[[I[Ljava/lang/String;)V

    return-object v1
.end method

.method public final getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;
    .locals 2

    .line 205
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    :goto_0
    const/4 v0, -0x1

    .line 207
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    .line 208
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    .line 209
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    return-object v0
.end method

.method public final getToken(I)Lorg/apache/james/mime4j/field/language/parser/Token;
    .locals 3

    .line 214
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 216
    iget-object v2, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    goto :goto_1

    .line 217
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    move-object v0, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final language()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/language/parser/ParseException;
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x12

    .line 66
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v2

    .line 67
    iget-object v2, v2, Lorg/apache/james/mime4j/field/language/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :goto_0
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk()I

    move-result v2

    :cond_0
    const/16 v4, 0x13

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    .line 76
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    aput v3, v1, v2

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->languages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 79
    :cond_1
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk()I

    move-result v2

    :cond_2
    const/16 v6, 0x2d

    if-eq v2, v5, :cond_4

    if-ne v2, v4, :cond_3

    .line 88
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    iget-object v2, v2, Lorg/apache/james/mime4j/field/language/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    aput v1, v0, v5

    .line 94
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 95
    new-instance v0, Lorg/apache/james/mime4j/field/language/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/language/parser/ParseException;-><init>()V

    throw v0

    .line 81
    :cond_4
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 83
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v2

    .line 84
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 85
    iget-object v2, v2, Lorg/apache/james/mime4j/field/language/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public parse()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/language/parser/ParseException;
        }
    .end annotation

    .line 34
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->doParse()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/language/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 39
    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/ParseException;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
