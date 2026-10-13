.class public final Li/v;
.super Li/a0;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/v$a;,
        Li/v$b;
    }
.end annotation


# static fields
.field public static final e:Li/u;

.field public static final f:Li/u;

.field private static final g:[B

.field private static final h:[B

.field private static final i:[B


# instance fields
.field private final a:Lj/f;

.field private final b:Li/u;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/v$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "multipart/mixed"

    .line 1
    invoke-static {v0}, Li/u;->a(Ljava/lang/String;)Li/u;

    move-result-object v0

    sput-object v0, Li/v;->e:Li/u;

    const-string v0, "multipart/alternative"

    .line 2
    invoke-static {v0}, Li/u;->a(Ljava/lang/String;)Li/u;

    const-string v0, "multipart/digest"

    .line 3
    invoke-static {v0}, Li/u;->a(Ljava/lang/String;)Li/u;

    const-string v0, "multipart/parallel"

    .line 4
    invoke-static {v0}, Li/u;->a(Ljava/lang/String;)Li/u;

    const-string v0, "multipart/form-data"

    .line 5
    invoke-static {v0}, Li/u;->a(Ljava/lang/String;)Li/u;

    move-result-object v0

    sput-object v0, Li/v;->f:Li/u;

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 6
    fill-array-data v1, :array_0

    sput-object v1, Li/v;->g:[B

    new-array v1, v0, [B

    .line 7
    fill-array-data v1, :array_1

    sput-object v1, Li/v;->h:[B

    new-array v0, v0, [B

    .line 8
    fill-array-data v0, :array_2

    sput-object v0, Li/v;->i:[B

    return-void

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lj/f;Li/u;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/f;",
            "Li/u;",
            "Ljava/util/List<",
            "Li/v$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/a0;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Li/v;->d:J

    .line 3
    iput-object p1, p0, Li/v;->a:Lj/f;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lj/f;->utf8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Li/u;->a(Ljava/lang/String;)Li/u;

    move-result-object p1

    iput-object p1, p0, Li/v;->b:Li/u;

    .line 5
    invoke-static {p3}, Li/g0/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Li/v;->c:Ljava/util/List;

    return-void
.end method

.method private a(Lj/d;Z)J
    .locals 12
    .param p1    # Lj/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 5
    new-instance p1, Lj/c;

    invoke-direct {p1}, Lj/c;-><init>()V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Li/v;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_6

    .line 7
    iget-object v6, p0, Li/v;->c:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li/v$b;

    .line 8
    iget-object v7, v6, Li/v$b;->a:Li/r;

    .line 9
    iget-object v6, v6, Li/v$b;->b:Li/a0;

    .line 10
    sget-object v8, Li/v;->i:[B

    invoke-interface {p1, v8}, Lj/d;->write([B)Lj/d;

    .line 11
    iget-object v8, p0, Li/v;->a:Lj/f;

    invoke-interface {p1, v8}, Lj/d;->a(Lj/f;)Lj/d;

    .line 12
    sget-object v8, Li/v;->h:[B

    invoke-interface {p1, v8}, Lj/d;->write([B)Lj/d;

    if-eqz v7, :cond_1

    .line 13
    invoke-virtual {v7}, Li/r;->b()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_1

    .line 14
    invoke-virtual {v7, v9}, Li/r;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lj/d;->a(Ljava/lang/String;)Lj/d;

    move-result-object v10

    sget-object v11, Li/v;->g:[B

    .line 15
    invoke-interface {v10, v11}, Lj/d;->write([B)Lj/d;

    move-result-object v10

    .line 16
    invoke-virtual {v7, v9}, Li/r;->b(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lj/d;->a(Ljava/lang/String;)Lj/d;

    move-result-object v10

    sget-object v11, Li/v;->h:[B

    .line 17
    invoke-interface {v10, v11}, Lj/d;->write([B)Lj/d;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 18
    :cond_1
    invoke-virtual {v6}, Li/a0;->b()Li/u;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "Content-Type: "

    .line 19
    invoke-interface {p1, v8}, Lj/d;->a(Ljava/lang/String;)Lj/d;

    move-result-object v8

    .line 20
    invoke-virtual {v7}, Li/u;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lj/d;->a(Ljava/lang/String;)Lj/d;

    move-result-object v7

    sget-object v8, Li/v;->h:[B

    .line 21
    invoke-interface {v7, v8}, Lj/d;->write([B)Lj/d;

    .line 22
    :cond_2
    invoke-virtual {v6}, Li/a0;->a()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3

    const-string v9, "Content-Length: "

    .line 23
    invoke-interface {p1, v9}, Lj/d;->a(Ljava/lang/String;)Lj/d;

    move-result-object v9

    .line 24
    invoke-interface {v9, v7, v8}, Lj/d;->b(J)Lj/d;

    move-result-object v9

    sget-object v10, Li/v;->h:[B

    .line 25
    invoke-interface {v9, v10}, Lj/d;->write([B)Lj/d;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    .line 26
    invoke-virtual {v0}, Lj/c;->n()V

    return-wide v9

    .line 27
    :cond_4
    :goto_3
    sget-object v9, Li/v;->h:[B

    invoke-interface {p1, v9}, Lj/d;->write([B)Lj/d;

    if-eqz p2, :cond_5

    add-long/2addr v4, v7

    goto :goto_4

    .line 28
    :cond_5
    invoke-virtual {v6, p1}, Li/a0;->a(Lj/d;)V

    .line 29
    :goto_4
    sget-object v6, Li/v;->h:[B

    invoke-interface {p1, v6}, Lj/d;->write([B)Lj/d;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 30
    :cond_6
    sget-object v1, Li/v;->i:[B

    invoke-interface {p1, v1}, Lj/d;->write([B)Lj/d;

    .line 31
    iget-object v1, p0, Li/v;->a:Lj/f;

    invoke-interface {p1, v1}, Lj/d;->a(Lj/f;)Lj/d;

    .line 32
    sget-object v1, Li/v;->i:[B

    invoke-interface {p1, v1}, Lj/d;->write([B)Lj/d;

    .line 33
    sget-object v1, Li/v;->h:[B

    invoke-interface {p1, v1}, Lj/d;->write([B)Lj/d;

    if-eqz p2, :cond_7

    .line 34
    invoke-virtual {v0}, Lj/c;->z()J

    move-result-wide p1

    add-long/2addr v4, p1

    .line 35
    invoke-virtual {v0}, Lj/c;->n()V

    :cond_7
    return-wide v4
.end method

.method static a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5

    const/16 v0, 0x22

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    if-eq v3, v0, :cond_0

    .line 39
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "%22"

    .line 40
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, "%0D"

    .line 41
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "%0A"

    .line 42
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method


# virtual methods
.method public a()J
    .locals 5

    .line 2
    iget-wide v0, p0, Li/v;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1}, Li/v;->a(Lj/d;Z)J

    move-result-wide v0

    iput-wide v0, p0, Li/v;->d:J

    return-wide v0
.end method

.method public a(I)Li/v$b;
    .locals 1

    .line 1
    iget-object v0, p0, Li/v;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/v$b;

    return-object p1
.end method

.method public a(Lj/d;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Li/v;->a(Lj/d;Z)J

    return-void
.end method

.method public b()Li/u;
    .locals 1

    .line 1
    iget-object v0, p0, Li/v;->b:Li/u;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Li/v;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
