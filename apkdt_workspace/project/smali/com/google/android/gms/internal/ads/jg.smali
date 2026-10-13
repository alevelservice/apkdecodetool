.class final Lcom/google/android/gms/internal/ads/jg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wn1;


# static fields
.field private static final q:Ljava/util/regex/Pattern;

.field private static final r:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljavax/net/ssl/SSLSocketFactory;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/gms/internal/ads/eo1;

.field private final f:Lcom/google/android/gms/internal/ads/ko1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ko1<",
            "-",
            "Lcom/google/android/gms/internal/ads/jg;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/internal/ads/bo1;

.field private h:Ljava/net/HttpURLConnection;

.field private i:Ljava/io/InputStream;

.field private j:Z

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:I

.field private p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/jg;->q:Ljava/util/regex/Pattern;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/jg;->r:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ko1;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ko1<",
            "-",
            "Lcom/google/android/gms/internal/ads/jg;",
            ">;III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/ig;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ig;-><init>(Lcom/google/android/gms/internal/ads/jg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->p:Ljava/util/Set;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/no1;->a(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jg;->d:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jg;->f:Lcom/google/android/gms/internal/ads/ko1;

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/eo1;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/eo1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jg;->e:Lcom/google/android/gms/internal/ads/eo1;

    .line 7
    iput p3, p0, Lcom/google/android/gms/internal/ads/jg;->b:I

    .line 8
    iput p4, p0, Lcom/google/android/gms/internal/ads/jg;->c:I

    .line 9
    iput p5, p0, Lcom/google/android/gms/internal/ads/jg;->o:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/jg;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/google/android/gms/internal/ads/jg;->o:I

    return p0
.end method

.method private static a(Ljava/net/HttpURLConnection;)J
    .locals 9

    const-string v0, "Content-Length"

    .line 94
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "]"

    if-nez v1, :cond_0

    .line 96
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected Content-Length ["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v3, -0x1

    :goto_0
    const-string v1, "Content-Range"

    .line 98
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 100
    sget-object v1, Lcom/google/android/gms/internal/ads/jg;->q:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 102
    :try_start_1
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v1, v3, v7

    if-gez v1, :cond_1

    move-wide v3, v5

    goto :goto_1

    :cond_1
    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    .line 103
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v1, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Inconsistent headers ["

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    .line 104
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v3, v0

    goto :goto_1

    .line 105
    :catch_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected Content-Range ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-wide v3
.end method

.method private final a()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->h:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 107
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unexpected error while disconnecting"

    .line 108
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->h:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/jg;Ljava/net/Socket;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/jg;->a(Ljava/net/Socket;)V

    return-void
.end method

.method private final a(Ljava/net/Socket;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->p:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 8

    .line 66
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/jg;->m:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/jg;->k:J

    const/4 v4, 0x0

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_4

    .line 67
    sget-object v0, Lcom/google/android/gms/internal/ads/jg;->r:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 68
    :cond_0
    :goto_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/jg;->m:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/jg;->k:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_3

    .line 69
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/jg;->k:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/jg;->m:J

    sub-long/2addr v1, v6

    array-length v3, v0

    int-to-long v6, v3

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 70
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jg;->i:Ljava/io/InputStream;

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 71
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_2

    if-eq v1, v5, :cond_1

    .line 72
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/jg;->m:J

    int-to-long v6, v1

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/jg;->m:J

    .line 73
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jg;->f:Lcom/google/android/gms/internal/ads/ko1;

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jg;->f:Lcom/google/android/gms/internal/ads/ko1;

    invoke-interface {v2, p0, v1}, Lcom/google/android/gms/internal/ads/ko1;->a(Ljava/lang/Object;I)V

    goto :goto_0

    .line 75
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 76
    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 77
    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/ads/jg;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_4
    if-nez p3, :cond_5

    return v4

    .line 78
    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/jg;->l:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    .line 79
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/jg;->l:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/jg;->n:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_6

    return v5

    :cond_6
    int-to-long v6, p3

    .line 80
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 81
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->i:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v5, :cond_9

    .line 82
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/jg;->l:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_8

    return v5

    .line 83
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 84
    :cond_9
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/jg;->n:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/jg;->n:J

    .line 85
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/jg;->f:Lcom/google/android/gms/internal/ads/ko1;

    if-eqz p2, :cond_a

    .line 86
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/jg;->f:Lcom/google/android/gms/internal/ads/ko1;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/ko1;->a(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    return p1

    :catch_0
    move-exception p1

    .line 87
    new-instance p2, Lcom/google/android/gms/internal/ads/co1;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/jg;->g:Lcom/google/android/gms/internal/ads/bo1;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/co1;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/bo1;I)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/bo1;)J
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Unable to connect to "

    .line 1
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/jg;->g:Lcom/google/android/gms/internal/ads/bo1;

    const-wide/16 v4, 0x0

    .line 2
    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/jg;->n:J

    .line 3
    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/jg;->m:J

    const/4 v6, 0x1

    .line 4
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/bo1;->a:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/bo1;->b:[B

    .line 6
    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/bo1;->d:J

    .line 7
    iget-wide v10, v2, Lcom/google/android/gms/internal/ads/bo1;->e:J

    .line 8
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/bo1;->a(I)Z

    move-result v12

    move-object v14, v7

    move-object v7, v0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v15, v0, 0x1

    const/16 v6, 0x14

    if-gt v0, v6, :cond_17

    .line 9
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 10
    instance-of v13, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v13, :cond_0

    .line 11
    move-object v13, v0

    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/jg;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v13, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 12
    :cond_0
    iget v6, v1, Lcom/google/android/gms/internal/ads/jg;->b:I

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 13
    iget v6, v1, Lcom/google/android/gms/internal/ads/jg;->c:I

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 14
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/jg;->e:Lcom/google/android/gms/internal/ads/eo1;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/eo1;->a()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_1
    const-wide/16 v4, -0x1

    const-wide/16 v17, 0x0

    cmp-long v6, v8, v17

    if-nez v6, :cond_3

    cmp-long v6, v10, v4

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move-wide/from16 v16, v8

    goto :goto_4

    :cond_3
    :goto_2
    const/16 v6, 0x1b

    .line 16
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "bytes="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    cmp-long v13, v10, v4

    if-eqz v13, :cond_4

    .line 17
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    add-long v19, v8, v10

    const-wide/16 v21, 0x1

    sub-long v4, v19, v21

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v16, 0x14

    add-int/lit8 v13, v13, 0x14

    move-wide/from16 v16, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-wide/from16 v16, v8

    :goto_3
    const-string v4, "Range"

    .line 18
    invoke-virtual {v0, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string v4, "User-Agent"

    .line 19
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/jg;->d:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v12, :cond_5

    const-string v4, "Accept-Encoding"

    const-string v5, "identity"

    .line 20
    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz v14, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    .line 22
    :goto_5
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz v14, :cond_7

    const-string v4, "POST"

    .line 23
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 24
    array-length v4, v14

    if-eqz v4, :cond_7

    .line 25
    array-length v4, v14

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 26
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 27
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 28
    invoke-virtual {v4, v14}, Ljava/io/OutputStream;->write([B)V

    .line 29
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    .line 30
    :cond_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 31
    :goto_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0x12c

    if-eq v4, v5, :cond_13

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_13

    const/16 v5, 0x12e

    if-eq v4, v5, :cond_13

    const/16 v5, 0x12f

    if-eq v4, v5, :cond_13

    if-nez v14, :cond_8

    const/16 v5, 0x133

    if-eq v4, v5, :cond_13

    const/16 v5, 0x134

    if-ne v4, v5, :cond_8

    goto/16 :goto_c

    .line 32
    :cond_8
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/jg;->h:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 33
    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/jg;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_10

    const/16 v4, 0x12b

    if-le v0, v4, :cond_9

    goto :goto_a

    :cond_9
    if-ne v0, v3, :cond_a

    .line 34
    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/bo1;->d:J

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_a
    const-wide/16 v8, 0x0

    :cond_b
    move-wide v4, v8

    :goto_7
    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/jg;->k:J

    const/4 v3, 0x1

    .line 35
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/bo1;->a(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 36
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/bo1;->e:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_c

    .line 37
    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/jg;->l:J

    goto :goto_9

    .line 38
    :cond_c
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/jg;->h:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jg;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-eqz v0, :cond_d

    .line 39
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/jg;->k:J

    sub-long/2addr v3, v5

    goto :goto_8

    :cond_d
    move-wide v3, v5

    :goto_8
    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/jg;->l:J

    goto :goto_9

    .line 40
    :cond_e
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/bo1;->e:J

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/jg;->l:J

    .line 41
    :goto_9
    :try_start_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/jg;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/jg;->i:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x1

    .line 42
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/jg;->j:Z

    .line 43
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/jg;->f:Lcom/google/android/gms/internal/ads/ko1;

    if-eqz v0, :cond_f

    .line 44
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ko1;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/bo1;)V

    .line 45
    :cond_f
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/jg;->l:J

    return-wide v2

    :catch_0
    move-exception v0

    .line 46
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jg;->a()V

    .line 47
    new-instance v3, Lcom/google/android/gms/internal/ads/co1;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v2, v4}, Lcom/google/android/gms/internal/ads/co1;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/bo1;I)V

    throw v3

    .line 48
    :cond_10
    :goto_a
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/jg;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 49
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jg;->a()V

    .line 50
    new-instance v4, Lcom/google/android/gms/internal/ads/fo1;

    invoke-direct {v4, v0, v3, v2}, Lcom/google/android/gms/internal/ads/fo1;-><init>(ILjava/util/Map;Lcom/google/android/gms/internal/ads/bo1;)V

    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_11

    .line 51
    new-instance v0, Lcom/google/android/gms/internal/ads/yn1;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/yn1;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 52
    :cond_11
    throw v4

    :catch_1
    move-exception v0

    .line 53
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/jg;->a()V

    .line 54
    new-instance v4, Lcom/google/android/gms/internal/ads/co1;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/bo1;->a:Landroid/net/Uri;

    .line 55
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_12
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :goto_b
    const/4 v5, 0x1

    invoke-direct {v4, v3, v0, v2, v5}, Lcom/google/android/gms/internal/ads/co1;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/bo1;I)V

    throw v4

    :cond_13
    :goto_c
    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    const/4 v14, 0x0

    :try_start_3
    const-string v4, "Location"

    .line 56
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v4, :cond_16

    .line 58
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v7, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v6, "https"

    .line 60
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string v6, "http"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 61
    new-instance v0, Ljava/net/ProtocolException;

    const-string v5, "Unsupported protocol redirect: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    :cond_14
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_d
    invoke-direct {v0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move-object v7, v0

    move-wide v4, v8

    move v0, v15

    move-wide/from16 v8, v16

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 62
    :cond_16
    new-instance v0, Ljava/net/ProtocolException;

    const-string v4, "Null location redirect"

    invoke-direct {v0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_17
    new-instance v0, Ljava/net/NoRouteToHostException;

    const/16 v4, 0x1f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Too many redirects: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    .line 64
    new-instance v4, Lcom/google/android/gms/internal/ads/co1;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/bo1;->a:Landroid/net/Uri;

    .line 65
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_18
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :goto_e
    const/4 v5, 0x1

    invoke-direct {v4, v3, v0, v2, v5}, Lcom/google/android/gms/internal/ads/co1;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/bo1;I)V

    goto :goto_10

    :goto_f
    throw v4

    :goto_10
    goto :goto_f
.end method

.method final a(I)V
    .locals 2

    .line 88
    iput p1, p0, Lcom/google/android/gms/internal/ads/jg;->o:I

    .line 89
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jg;->p:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 90
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/jg;->o:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to update receive buffer size."

    .line 92
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final close()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jg;->i:Ljava/io/InputStream;

    if-eqz v2, :cond_6

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jg;->h:Ljava/net/HttpURLConnection;

    .line 3
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/jg;->l:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/jg;->l:J

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/jg;->l:J

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/jg;->n:J

    sub-long/2addr v3, v7

    .line 4
    :goto_0
    sget v7, Lcom/google/android/gms/internal/ads/cp1;->a:I

    const/16 v8, 0x13

    if-eq v7, v8, :cond_1

    sget v7, Lcom/google/android/gms/internal/ads/cp1;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v8, 0x14

    if-ne v7, v8, :cond_5

    .line 5
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 6
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x800

    cmp-long v7, v3, v5

    if-lez v7, :cond_5

    .line 7
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 10
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "unexpectedEndOfInput"

    new-array v5, v1, [Ljava/lang/Class;

    .line 11
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    .line 13
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :catch_0
    :cond_5
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jg;->i:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v2

    .line 15
    :try_start_3
    new-instance v3, Lcom/google/android/gms/internal/ads/co1;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jg;->g:Lcom/google/android/gms/internal/ads/bo1;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/gms/internal/ads/co1;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/bo1;I)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :cond_6
    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->i:Ljava/io/InputStream;

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/jg;->a()V

    .line 18
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/jg;->j:Z

    if-eqz v0, :cond_7

    .line 19
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/jg;->j:Z

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->f:Lcom/google/android/gms/internal/ads/ko1;

    if-eqz v0, :cond_7

    .line 21
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/ko1;->a(Ljava/lang/Object;)V

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void

    :catchall_0
    move-exception v2

    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->i:Ljava/io/InputStream;

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/jg;->a()V

    .line 25
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/jg;->j:Z

    if-eqz v0, :cond_8

    .line 26
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/jg;->j:Z

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->f:Lcom/google/android/gms/internal/ads/ko1;

    if-eqz v0, :cond_8

    .line 28
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/ko1;->a(Ljava/lang/Object;)V

    .line 29
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    throw v2
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jg;->h:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
