.class Landroidx/media/MediaBrowserServiceCompat$l$c;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat$l;->a(Landroidx/media/c;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/media/c;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Landroid/os/Bundle;

.field final synthetic h:Landroidx/media/MediaBrowserServiceCompat$l;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$l;Landroidx/media/c;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$l$c;->h:Landroidx/media/MediaBrowserServiceCompat$l;

    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$l$c;->e:Landroidx/media/c;

    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$l$c;->f:Ljava/lang/String;

    iput-object p4, p0, Landroidx/media/MediaBrowserServiceCompat$l$c;->g:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$l$c;->h:Landroidx/media/MediaBrowserServiceCompat$l;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$l;->b:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->mConnections:La/e/a;

    invoke-virtual {v1}, La/e/g;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$l$c;->h:Landroidx/media/MediaBrowserServiceCompat$l;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$l;->b:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->mConnections:La/e/a;

    invoke-virtual {v1, v0}, La/e/g;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media/MediaBrowserServiceCompat$f;

    .line 3
    iget-object v2, v1, Landroidx/media/MediaBrowserServiceCompat$f;->d:Landroidx/media/c;

    iget-object v3, p0, Landroidx/media/MediaBrowserServiceCompat$l$c;->e:Landroidx/media/c;

    invoke-virtual {v2, v3}, Landroidx/media/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$l$c;->h:Landroidx/media/MediaBrowserServiceCompat$l;

    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$l$c;->f:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media/MediaBrowserServiceCompat$l$c;->g:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media/MediaBrowserServiceCompat$l;->a(Landroidx/media/MediaBrowserServiceCompat$f;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
