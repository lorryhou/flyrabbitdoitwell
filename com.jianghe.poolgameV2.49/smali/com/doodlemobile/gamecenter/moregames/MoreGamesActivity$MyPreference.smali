.class Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyPreference;
.super Ljava/lang/Object;
.source "MoreGamesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPreference"
.end annotation


# instance fields
.field private final STR_PREFERDATE_KEY:Ljava/lang/String;

.field private mPrefer:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 167
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyPreference;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const-string v0, "STR_NOWDATE"

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyPreference;->STR_PREFERDATE_KEY:Ljava/lang/String;

    .line 168
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyPreference;->mPrefer:Landroid/content/SharedPreferences;

    .line 169
    return-void
.end method


# virtual methods
.method public getPreferDate()J
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyPreference;->mPrefer:Landroid/content/SharedPreferences;

    const-string v1, "STR_NOWDATE"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setPreferDate(J)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyPreference;->mPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "STR_NOWDATE"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    return-void
.end method
