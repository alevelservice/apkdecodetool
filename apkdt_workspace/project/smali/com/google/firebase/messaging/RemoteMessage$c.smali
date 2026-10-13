.class public Lcom/google/firebase/messaging/RemoteMessage$c;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/RemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:[Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Landroid/net/Uri;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/Integer;

.field private final p:Ljava/lang/Integer;

.field private final q:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/google/firebase/messaging/v;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "gcm.n.title"

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->b:Ljava/lang/String;

    .line 3
    invoke-static {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage$c;->a(Lcom/google/firebase/messaging/v;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->c:[Ljava/lang/String;

    const-string v0, "gcm.n.body"

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->e:Ljava/lang/String;

    .line 6
    invoke-static {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage$c;->a(Lcom/google/firebase/messaging/v;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->f:[Ljava/lang/String;

    const-string v0, "gcm.n.icon"

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->g:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/messaging/v;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->i:Ljava/lang/String;

    const-string v0, "gcm.n.tag"

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->g(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "gcm.n.color"

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->j:Ljava/lang/String;

    const-string v0, "gcm.n.click_action"

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->k:Ljava/lang/String;

    const-string v0, "gcm.n.android_channel_id"

    .line 12
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->l:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/google/firebase/messaging/v;->b()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->m:Landroid/net/Uri;

    const-string v0, "gcm.n.image"

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->h:Ljava/lang/String;

    const-string v0, "gcm.n.ticker"

    .line 15
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->n:Ljava/lang/String;

    const-string v0, "gcm.n.notification_priority"

    .line 16
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->o:Ljava/lang/Integer;

    const-string v0, "gcm.n.visibility"

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->p:Ljava/lang/Integer;

    const-string v0, "gcm.n.notification_count"

    .line 18
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->q:Ljava/lang/Integer;

    const-string v0, "gcm.n.sticky"

    .line 19
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->a(Ljava/lang/String;)Z

    const-string v0, "gcm.n.local_only"

    .line 20
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->a(Ljava/lang/String;)Z

    const-string v0, "gcm.n.default_sound"

    .line 21
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->a(Ljava/lang/String;)Z

    const-string v0, "gcm.n.default_vibrate_timings"

    .line 22
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->a(Ljava/lang/String;)Z

    const-string v0, "gcm.n.default_light_settings"

    .line 23
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->a(Ljava/lang/String;)Z

    const-string v0, "gcm.n.event_time"

    .line 24
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/v;->f(Ljava/lang/String;)Ljava/lang/Long;

    .line 25
    invoke-virtual {p1}, Lcom/google/firebase/messaging/v;->a()[I

    .line 26
    invoke-virtual {p1}, Lcom/google/firebase/messaging/v;->g()[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/messaging/v;Lcom/google/firebase/messaging/RemoteMessage$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/RemoteMessage$c;-><init>(Lcom/google/firebase/messaging/v;)V

    return-void
.end method

.method private static a(Lcom/google/firebase/messaging/v;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/v;->d(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 2
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->m:Landroid/net/Uri;

    return-object v0
.end method

.method public j()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->q:Ljava/lang/Integer;

    return-object v0
.end method

.method public k()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->o:Ljava/lang/Integer;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public o()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$c;->p:Ljava/lang/Integer;

    return-object v0
.end method
