.class Le/n/a/c$i$a;
.super Ljava/lang/Object;
.source "SqflitePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/n/a/c$i;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Le/n/a/c$i;


# direct methods
.method constructor <init>(Le/n/a/c$i;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/a/c$i$a;->f:Le/n/a/c$i;

    iput-object p2, p0, Le/n/a/c$i$a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/n/a/c$i$a;->f:Le/n/a/c$i;

    invoke-static {v0}, Le/n/a/c$i;->a(Le/n/a/c$i;)Lg/a/c/a/k$d;

    move-result-object v0

    iget-object v1, p0, Le/n/a/c$i$a;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method
