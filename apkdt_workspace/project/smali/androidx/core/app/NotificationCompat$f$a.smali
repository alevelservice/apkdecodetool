.class public final Landroidx/core/app/NotificationCompat$f$a;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:J

.field private final c:Landroidx/core/app/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroid/os/Bundle;

.field private e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;JLandroidx/core/app/k;)V
    .locals 1
    .param p4    # Landroidx/core/app/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$f$a;->d:Landroid/os/Bundle;

    .line 3
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$f$a;->a:Ljava/lang/CharSequence;

    .line 4
    iput-wide p2, p0, Landroidx/core/app/NotificationCompat$f$a;->b:J

    .line 5
    iput-object p4, p0, Landroidx/core/app/NotificationCompat$f$a;->c:Landroidx/core/app/k;

    return-void
.end method

.method static a(Ljava/util/List;)[Landroid/os/Bundle;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$f$a;",
            ">;)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/app/NotificationCompat$f$a;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$f$a;->f()Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private f()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$f$a;->a:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const-string v2, "text"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    iget-wide v1, p0, Landroidx/core/app/NotificationCompat$f$a;->b:J

    const-string v3, "time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$f$a;->c:Landroidx/core/app/k;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Landroidx/core/app/k;->c()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "sender"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 8
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$f$a;->c:Landroidx/core/app/k;

    invoke-virtual {v1}, Landroidx/core/app/k;->g()Landroid/app/Person;

    move-result-object v1

    const-string v2, "sender_person"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$f$a;->c:Landroidx/core/app/k;

    invoke-virtual {v1}, Landroidx/core/app/k;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "person"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 10
    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$f$a;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "type"

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_3
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$f$a;->f:Landroid/net/Uri;

    if-eqz v1, :cond_4

    const-string v2, "uri"

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 14
    :cond_4
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$f$a;->d:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    const-string v2, "extras"

    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$f$a;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$f$a;->e:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$f$a;->f:Landroid/net/Uri;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$f$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$f$a;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public c()Landroidx/core/app/k;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$f$a;->c:Landroidx/core/app/k;

    return-object v0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$f$a;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/core/app/NotificationCompat$f$a;->b:J

    return-wide v0
.end method
