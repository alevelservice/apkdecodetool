.class final Lcom/google/android/gms/internal/ads/f7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field a:J

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:J

.field final e:J

.field final f:J

.field final g:J

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/wk1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zw0;)V
    .locals 13

    .line 9
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zw0;->b:Ljava/lang/String;

    iget-wide v3, p2, Lcom/google/android/gms/internal/ads/zw0;->c:J

    iget-wide v5, p2, Lcom/google/android/gms/internal/ads/zw0;->d:J

    iget-wide v7, p2, Lcom/google/android/gms/internal/ads/zw0;->e:J

    iget-wide v9, p2, Lcom/google/android/gms/internal/ads/zw0;->f:J

    .line 10
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zw0;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    :cond_0
    move-object v11, v0

    goto :goto_1

    .line 11
    :cond_1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zw0;->g:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 14
    new-instance v11, Lcom/google/android/gms/internal/ads/wk1;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v11, v12, v1}, Lcom/google/android/gms/internal/ads/wk1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    .line 15
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/f7;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/wk1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f7;->b:Ljava/lang/String;

    const-string p1, ""

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f7;->c:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/f7;->d:J

    .line 5
    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/f7;->e:J

    .line 6
    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/f7;->f:J

    .line 7
    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/f7;->g:J

    .line 8
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/f7;->h:Ljava/util/List;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/q6;)Lcom/google/android/gms/internal/ads/f7;
    .locals 14

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/n5;->b(Ljava/io/InputStream;)I

    move-result v0

    const v1, 0x20150306

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/n5;->a(Lcom/google/android/gms/internal/ads/q6;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/n5;->a(Lcom/google/android/gms/internal/ads/q6;)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/n5;->c(Ljava/io/InputStream;)J

    move-result-wide v5

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/n5;->c(Ljava/io/InputStream;)J

    move-result-wide v7

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/n5;->c(Ljava/io/InputStream;)J

    move-result-wide v9

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/n5;->c(Ljava/io/InputStream;)J

    move-result-wide v11

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/n5;->b(Lcom/google/android/gms/internal/ads/q6;)Ljava/util/List;

    move-result-object v13

    .line 9
    new-instance p0, Lcom/google/android/gms/internal/ads/f7;

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/internal/ads/f7;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/util/List;)V

    return-object p0

    .line 10
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method


# virtual methods
.method final a(Ljava/io/OutputStream;)Z
    .locals 5

    const v0, 0x20150306

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 11
    :try_start_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/n5;->a(Ljava/io/OutputStream;I)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f7;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/n5;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f7;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f7;->c:Ljava/lang/String;

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/n5;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 14
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/f7;->d:J

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/n5;->a(Ljava/io/OutputStream;J)V

    .line 15
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/f7;->e:J

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/n5;->a(Ljava/io/OutputStream;J)V

    .line 16
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/f7;->f:J

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/n5;->a(Ljava/io/OutputStream;J)V

    .line 17
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/f7;->g:J

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/n5;->a(Ljava/io/OutputStream;J)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f7;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/n5;->a(Ljava/io/OutputStream;I)V

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/wk1;

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/wk1;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/n5;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/wk1;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/n5;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_1
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/n5;->a(Ljava/io/OutputStream;I)V

    .line 24
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 25
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%s"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/w1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
