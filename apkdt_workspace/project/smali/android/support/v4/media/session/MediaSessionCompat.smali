.class public Landroid/support/v4/media/session/MediaSessionCompat;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;,
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;,
        Landroid/support/v4/media/session/MediaSessionCompat$a;,
        Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;,
        Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;,
        Landroid/support/v4/media/session/MediaSessionCompat$Token;,
        Landroid/support/v4/media/session/MediaSessionCompat$SessionFlags;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v4/media/session/MediaControllerCompat;


# direct methods
.method static a(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 14

    if-eqz p0, :cond_5

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->c()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->d()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->d()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->d()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->a()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_5

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 9
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->b()F

    move-result v6

    sub-long v0, v12, v0

    long-to-float v0, v0

    mul-float v6, v6, v0

    float-to-long v0, v6

    .line 10
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->c()J

    move-result-wide v6

    add-long/2addr v0, v6

    if-eqz p1, :cond_2

    const-string v6, "android.media.metadata.DURATION"

    .line 11
    invoke-virtual {p1, v6}, Landroid/support/v4/media/MediaMetadataCompat;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 12
    invoke-virtual {p1, v6}, Landroid/support/v4/media/MediaMetadataCompat;->b(Ljava/lang/String;)J

    move-result-wide v2

    :cond_2
    cmp-long p1, v2, v4

    if-ltz p1, :cond_3

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    move-wide v9, v2

    goto :goto_0

    :cond_3
    cmp-long p1, v0, v4

    if-gez p1, :cond_4

    move-wide v9, v4

    goto :goto_0

    :cond_4
    move-wide v9, v0

    .line 13
    :goto_0
    new-instance p1, Landroid/support/v4/media/session/PlaybackStateCompat$b;

    invoke-direct {p1, p0}, Landroid/support/v4/media/session/PlaybackStateCompat$b;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 14
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->d()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->b()F

    move-result v11

    move-object v7, p1

    invoke-virtual/range {v7 .. v13}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->a(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$b;

    .line 15
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$b;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p0

    :cond_5
    :goto_1
    return-object p0
.end method

.method public static a(Landroid/os/Bundle;)V
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 2
    const-class v0, Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaControllerCompat;

    return-object v0
.end method
