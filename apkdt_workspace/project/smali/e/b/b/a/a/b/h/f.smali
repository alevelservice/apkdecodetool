.class Le/b/b/a/a/b/h/f;
.super Ljava/lang/Object;
.source "SpmTrackIntegrator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Le/b/b/a/a/b/h/d;


# direct methods
.method constructor <init>(Le/b/b/a/a/b/h/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/b/b/a/a/b/h/f;->f:Le/b/b/a/a/b/h/d;

    iput-object p2, p0, Le/b/b/a/a/b/h/f;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/h/f;->f:Le/b/b/a/a/b/h/d;

    invoke-static {v0}, Le/b/b/a/a/b/h/d;->a(Le/b/b/a/a/b/h/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Le/b/b/a/a/b/h/f;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
